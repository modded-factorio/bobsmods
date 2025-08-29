from pathlib import Path
from typing import Iterable
import sys


type LanguageKeys = dict[str, list[str]]


def load_keys(cfg_file: Path) -> list[str]:
    if not cfg_file.exists():
        return []
    content = cfg_file.read_text(encoding="utf-8")

    result = set()
    current_section = None

    for line in content.splitlines():
        if not line.strip() or line.startswith("#"):
            continue
        if line.startswith("[") and line.endswith("]"):
            current_section = line[1:-1]
            continue
        if "=" in line:
            key = line.split("=", 1)[0]
            result.add(f"{current_section}.{key}")

    return result


def load_all_keys(folders: list[Path], lang: str) -> LanguageKeys:
    return {
        folder.name: load_keys(folder / "locale" / lang / f"{folder.name}.cfg")
        for folder in folders
    }


def print_stats(
    english_keys: LanguageKeys, language_keys: LanguageKeys, detailed: bool
) -> None:
    total_keys = 0
    total_translated = 0

    if detailed:
        print(f"Translation stats for {lang}:")

    for mod_name, keys in language_keys.items():
        english_mod_keys = english_keys.get(mod_name, [])
        valid_keys = set(keys) & set(english_mod_keys)
        total_keys += len(english_mod_keys)
        total_translated += len(valid_keys)

        if detailed:
            print(f"  {mod_name}: {len(valid_keys)}/{len(english_mod_keys)}")
            if missing := english_mod_keys - valid_keys:
                print(f"  Missing keys in {mod_name}: {', '.join(missing)}")

    percentage = (total_translated / total_keys) * 100 if total_keys else 0
    print(f"{lang}: {total_translated}/{total_keys} ({percentage:.0f}%)")


def collect_mod_folders() -> Iterable[Path]:
    base_dir = Path(__file__).parent.parent
    for mod in sorted(base_dir.iterdir(), key=lambda p: p.name.lower()):
        if mod.is_dir() and not mod.name.startswith("."):
            yield mod


def collect_languages(mod_folders: list[Path]) -> list[str]:
    languages = set()
    for mod_folder in mod_folders:
        for lang_folder in (mod_folder / "locale").iterdir():
            languages.add(lang_folder.name)
    return sorted(languages)


if __name__ == "__main__":
    detailed = "--detailed" in sys.argv
    mod_folders = list(collect_mod_folders())
    languages = collect_languages(mod_folders)
    english_keys = load_all_keys(mod_folders, "en")

    for lang in languages:
        if lang == "en":
            continue
        languages_keys = load_all_keys(mod_folders, lang)
        print_stats(english_keys, languages_keys, detailed)
