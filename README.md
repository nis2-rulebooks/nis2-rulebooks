# NIS2 Incident Rulebooks

## Scope and disclaimer

These rulebooks are solely intended to be used as a practical guidance by an entity facing a cyberse‑curity incident and looking for immediate assistance from the competent authorities and the Computer Security Incident Response Teams (“CSIRT”). They have been written by a joint team of experts of the High Commission for National Protection (“HCPN”), acting in its role as the Agence Nationale de la Sécurité des Systèmes d’Information (“ANSSI”) and as the Governmental Computer Security Incident Response Team (“GOVCERT.LU”), the Computer Incident Response Center Luxembourg (“CIRCL”), the Commission de Surveillance du Secteur Financier (“CSSF”), and of the Institut Luxembourgeois de Régulation (“ILR”), in the context of 14(5) of the Loi du 5 mai 2026 concernant des mesures destinées à assurer un niveau élevé de cybersécurité (“NIS2 Law”), and in accordance with the missions assigned to the HCPN in its role as ANSSI under Article 3, paragraph 1ter, of the Loi modifiée du 23 juillet 2016 portant création du Haut‑Commissariat à la Protection nationale.

These rulebooks must not be used as a substitute for any policies or procedures in force at the entities.

Neither the HCPN, the CIRCL, the CSSF, nor the ILR can be held liable in the event of malfunction or unforeseen circumstances or for any damages resulting from the use of the guidance. These rulebooks do not address the legal obligations to be fulfilled by the concerned entities (e.g., file a complaint, notification of incidents to the CSSF, the ILR, and the Commission Nationale pour la Protection des Données (CNPD), etc.).

This repository contains the rulebooks in source format and PDF format.

The goal of this repository is to provide practical, reusable, and maintainable documentation for organisations, authorities, CSIRTs, and other stakeholders involved in cybersecurity incident preparedness, response, reporting, and coordination.

The rulebooks are written in Markdown to make them easy to read, review, version, translate, reuse, and maintain over time.

## Building the PDF locally

To compile the document yourself, install the following requirements:

* [Pandoc](https://pandoc.org/) >= 3.8
* A LaTeX distribution that provides XeLaTeX (a full TeX Live installation is the simplest option; on Debian or Ubuntu, install `texlive-full`)
* The [Eisvogel Pandoc template](https://github.com/Wandmalfarbe/pandoc-latex-template)
* Bash, to run the build script

Download the latest Eisvogel release from its [releases page](https://github.com/Wandmalfarbe/pandoc-latex-template/releases/latest), extract it, and copy `eisvogel.latex` into Pandoc's local `templates` directory. Create the directory if it does not already exist:

```bash
mkdir -p ~/.local/share/pandoc/templates
cp /path/to/extracted/eisvogel.latex ~/.local/share/pandoc/templates/
```

Pandoc prints its user data directory in `pandoc --version`. Depending on the platform and Pandoc installation, the template directory may instead be `~/.pandoc/templates` (older Unix installations) or `%APPDATA%\pandoc\templates` (Windows). Verify the installation with `pandoc --print-default-data-file templates/eisvogel.latex > /dev/null`.

Then, from the repository root, build the document with:

```bash
bash tools/build.sh
```

The script writes the generated PDF to `rulebooks/operational-guidance-incident-handling.pdf`.

## Building the PDF with Docker container

Clone git repo

```bash
git clone -c core.autocrlf=false https://github.com/nis2-rulebooks/nis2-rulebooks.git
cd nis2-rulebooks
```

On Windows, generate PDF with PowerShell:

```PowerShell
docker run --rm `
  --volume "${PWD}:/data" `
  --workdir /data/tools `
  --entrypoint /bin/bash `
  pandoc/extra:3.10.0.0-ubuntu build.sh
```

On Debian, generate PDF with bash:

```bash
sudo docker run --rm \
  --user "$(id -u):$(id -g)" \
  --volume "$PWD:/data" \
  --workdir /data/tools \
  --entrypoint /bin/bash \
  pandoc/extra:3.10.0.0-ubuntu build.sh
```

PDF are generated here:

```
tools/output.pdf
rulebooks/operational-guidance-incident-handling.pdf
```


## Maintainers

This repository is maintained by the relevant NIS2 authorities and NIS2 CSIRTs in Luxembourg.

The maintainers are responsible for:

* Maintaining the structure and quality of the repository
* Reviewing proposed changes
* Deciding the release rhythm of the documents
* Accepting or rejecting contributions
* Ensuring consistency with the needs of the NIS2 community
* Publishing stable releases of the rulebooks

Third-party contributions are welcome. However, all contributions are reviewed before inclusion and may be accepted, modified, postponed, or rejected depending on their relevance, quality, accuracy, and usefulness for the NIS2 community in Luxembourg or at large.

## Document Status

Documents in this repository may have one of the following statuses:

| Status     | Meaning                                                 |
| ---------- | ------------------------------------------------------- |
| Draft      | Work in progress, not yet considered stable             |
| Review     | Under active review by maintainers and contributors     |
| **Stable**     | Approved for use and included in a release              |
| Deprecated | Kept for historical reference but no longer recommended |
| Archived   | No longer maintained                                    |

Each rulebook should clearly indicate its status, version, date of last update, and intended audience.

## Releases

The maintainers define and manage the release rhythm of the rulebooks.

Releases may include:

* New rulebooks
* Updated procedures
* Clarifications
* Corrections
* Deprecated or archived documents
* Changes based on operational feedback
* Changes reflecting new legal, regulatory, or community guidance

Stable releases are intended to provide a reference point for organisations and stakeholders using these documents.

Urgent updates may be released outside the regular rhythm when needed, especially in cases involving significant changes, operational urgency, or major corrections.

Regular reviews are performed every 6 months which indicate the release cycle of the rulebooks.

## Contributions

Contributions from third parties are welcome.

Examples of useful contributions include:

* Improvements to existing rulebooks
* New templates or checklists
* Clarifications and corrections
* Operational lessons learned
* Suggestions for better structure or readability
* Translations
* Examples that help organisations understand incident handling expectations

Contributions should be submitted through pull requests or issues, depending on the nature of the proposal.

## Contribution Review Process

Contributions are reviewed by the maintainers.

The review may consider:

* Relevance to NIS2 incident handling
* Usefulness for the Luxembourg NIS2 community
* Usefulness for the broader NIS2 or CSIRT community
* Technical and operational accuracy
* Clarity and readability
* Neutrality and vendor independence
* Compatibility with existing guidance
* Maintainability over time

A contribution may be rejected even if it is technically correct, for example if it is outside the scope of the repository, too specific to one organisation, difficult to maintain, or not aligned with the objectives of the project.

The maintainers may also request changes before accepting a contribution.

## Editorial Principles

The documents in this repository should be:

* Practical and actionable
* Clear and concise
* Easy to reuse and adapt
* Written in plain language where possible
* Vendor-neutral
* Consistent in structure and terminology
* Useful for both technical and non-technical stakeholders
* Maintained as living documents

Where appropriate, documents should distinguish between:

* Legal or regulatory requirements
* Operational recommendations
* Good practices
* Examples
* Optional templates

## Language

Documents may be maintained in one or more languages depending on community needs.

When translations are provided, the repository should clearly indicate which version is authoritative if differences appear between language versions.

## Licensing

Unless otherwise stated, the content of this repository is released under the Creative Commons Attribution 4.0 International License, also known as CC BY 4.0.

This means that the documents may be shared, copied, redistributed, adapted, and reused, including for commercial purposes, provided that appropriate credit is given.

See the `LICENSE` file for details.

Suggested attribution:


> Based on the NIS2 Incident Rulebooks maintained by the NIS2 authorities and NIS2 CSIRTs available at [https://github.com/nis2-rulebooks/nis2-rulebooks](https://github.com/nis2-rulebooks/nis2-rulebooks). Licensed under CC-BY 4.0.


## Security and Responsible Disclosure

This repository is intended to support incident handling and cybersecurity coordination.

Please do not submit sensitive, confidential, personal, classified, or operationally restricted information through public issues or pull requests.

This includes:

* Personal data
* Incident data from real cases
* Indicators that are not intended for public release
* Sensitive vulnerability information
* Internal procedures from organisations
* Confidential communication with authorities or CSIRTs

If you believe that sensitive information needs to be shared with the maintainers, use the appropriate trusted or official communication channel instead of this public repository.

## Contact

For questions, proposals, or coordination related to this repository, please use the official contact channels of the maintainers.

For general improvements, open an issue or submit a pull request.

For sensitive or operational matters, do not use public GitHub issues. Use an appropriate trusted communication channel.
