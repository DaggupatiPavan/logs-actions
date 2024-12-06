# Record Logs Action

A GitHub Action to capture stdout and stderr of a command and save them to log files.

## Inputs

- `command`: The command to execute.
- `stdout_path`: Path to save the stdout log.
- `stderr_path`: Path to save the stderr log.

## Example Usage

```yaml
- name: Record logs for a command
  uses: ./logs-actions
  with:
    command: "echo 'Hello, World!'"
    stdout_path: "./logs/stdout.log"
    stderr_path: "./logs/stderr.log"
