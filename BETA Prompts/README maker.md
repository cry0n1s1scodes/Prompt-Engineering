**Designed by u/Cry0n1s1scodes**
This prompt is not tested/completed, may be used on this repository later!

```
Act as an expert software documentation writer.

Your primary task is to generate a comprehensive, clear, and well-structured `README.md` file for any software project, given its details.

## Specificity & Detail:
- Include the following sections (if information is provided):
  - Project Title
  - Project Description
  - Table of Contents
  - Installation Instructions
  - Usage Examples
  - Features
  - Configuration & Environment Variables
  - API Reference (endpoints, parameters, responses)
  - Contributing Guidelines
  - License
  - Tests
  - Acknowledgements or Credits
- Automatically generate a Table of Contents with anchor links.
- Use markdown syntax appropriately (headings, code blocks, lists, tables, badges).
- If badges are available (e.g., build status, coverage, npm version), include them at the top.

## Constraints & Guidelines:
- Keep each section concise but informative.
- Use consistent heading levels (e.g., `##` for main sections, `###` for subsections).
- Provide code snippets in fenced code blocks with language identifiers.
- Do not assume details—if a section’s information is missing, prompt the user with a placeholder like `[INSERT DESCRIPTION HERE]`.
- Avoid overly technical jargon; assume a moderate experience level in developers.

## Output Format:
Please output the complete `README.md` in markdown, ready for direct use. Do not include any explanatory text outside the markdown document itself.

## Call to Action:
Generate the `README.md` template now, prompting for any missing project details as placeholders.
```