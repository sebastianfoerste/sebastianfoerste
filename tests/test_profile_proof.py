"""Run the profile proof checker under pytest.

Tooling that discovers a Python project's quick gate runs `pytest -q`; this makes
that gate the real checker rather than an empty test run.
"""

import subprocess
from pathlib import Path

REPO = Path(__file__).resolve().parents[1]


def test_profile_proof_passes():
    result = subprocess.run(
        ["bash", "scripts/check-profile.sh"],
        cwd=REPO,
        capture_output=True,
        text=True,
        timeout=180,
    )
    assert result.returncode == 0, result.stdout + result.stderr
