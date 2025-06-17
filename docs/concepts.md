# Concepts

Hermaeus introduces a fair amount of new concepts related to written documentation automation.

## Document

A document is a file in a git repository.

Most of the time, Document resources are managed (created, updated and deleted) by Hermaeus.

## Docfest

/// admonition | Docfest is the contraction of DOCument maniFEST
    type: info
///

Docfests contain _freestyle_ information with a documentation only purpose.

Docfests are either:

* Provided by the vendor. They should be used by other document templates.
* Generated from a DocumentTemplate as an intermediate product.

Docfests are identified by their labels which act like a apiVersion/kind idenfication.

/// admonition | Example
    type: example

Every system needs maintenance. When a new tool or app is installed, the operators need to know what are the maintenance tasks, how and when to perform them.
This is valid for third-tier apps and company's apps.

If the deployment method uses Hermaeus (it should!), it will onboard Docfests about the maintenance tasks.

Using the Docfests, multiple DocumentTemplates will populate the documentation with an accurate list of the tasks, and a page on how to perform each task. 
To push further, another automation could take the tasks and populate a dashboard for easier management.
///

/// admonition | There is no controller associated with Docfest
    type: info
Since Docfests aren't representing any concrete resources (pods, network...) and only contain information to be reused. There is no need for a dedicated controller.
///

## DocumentTemplate

A DocumentTemplate defines how a document should be generated and where.

## DocumentTemplateSet

It's a template of DocumentTemplate. Using this, Hermaeus can create multiple DocumentTemplate based on generation rules.

## DocumentTemplateConfig

DocumentTemplateConfig is a preset maintained by the user. It completes the generic DocumentTemplate to make it fit to the user's need.

With DocumentTemplateConfig resources, it becomes possible to assign a path in the git repository, to override some default parameters.
