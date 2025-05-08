[![License](https://img.shields.io/badge/license-Apache%203.0-blue.svg)]()

# Untested AI Prompts Collection

## Description
A curated collection of untested AI prompts for prompt engineering experimentation. Use these prompts as starting points to explore model behaviors, refine phrasing, and discover unexpected outputs.

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Prompt Catalog](#prompt-catalog)
- [Features](#features)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [Tests](#tests)
- [License](#license)
- [Acknowledgements](#acknowledgements)

## Usage

1. Browse the prompt catalog in `prompts/`.
2. Select a prompt file (markdown or JSON).
3. Copy the prompt text into your preferred AI interface or testing script.
4. Record the model’s response and iterate.

### Example

```bash
# Example using a Python script
python run_prompt.py --file prompts/creative_story_idea.md
```

## Prompt Catalog
**THIS IS NOT ACCURATE, IN PROGRESS!**
| File                           | Description                                     |
| ------------------------------ | ----------------------------------------------- |
| `creative_story_idea.md`       | Open-ended story ideas starter                  |
| `product_description_ad.md`    | Marketing-focused product description prompt    |
| `debug_python_code.md`         | Ask the model to diagnose Python code issues    |
| `translation_accuracy_test.md` | Evaluate translation fidelity between languages |

*Add additional prompt files as needed.*

## Features

* Easily extendable directory of prompts
* Consistent naming convention and metadata headers
* Markdown and JSON formats supported

## Configuration

*No special configuration or environment variables are required.*

## Contributing

1. Fork this repository.
2. Add your new prompt file to the `prompts/` directory.
3. Follow existing file naming and metadata patterns.
4. Submit a pull request describing your prompt and its intended use.

Please follow the [Contributor Covenant](https://www.contributor-covenant.org/) code of conduct.

## Tests

*No automated tests at this time.*
Contributors are encouraged to share test results or example outputs.

## License

This project is licensed under the Apache License, Version 3.0. See the [LICENSE](LICENSE) file for details.

## Acknowledgements

* Prompt engineering community for inspiration
* AI model providers for research support
* Contributors and testers
