# Architecture Diagram — Azure VMSS + Load Balancer

## Lucid diagram

- **Master Lucid document (all 30 diagrams, icon style):** https://lucid.app/lucidchart/3da75ce3-ea66-4296-81b3-00d20a60435b/edit
- This project is **page 19** of that document.

## Lucid prompt (reusable)

```
Create an Azure architecture diagram titled "Azure VM Scale Sets + Load Balancer".
A User sends HTTP traffic to a Standard Load Balancer, which distributes to a VM Scale
Set of 2-5 Linux instances. Autoscale rules adjust the instance count based on CPU
(scale out above 75%, in below 25%). Label the arrows. Clean, professional Azure colors.
```

## Mermaid source

```mermaid
flowchart TB
    User([User])
    LB[Standard Load Balancer]
    V1[VM Instance]
    V2[VM Instance]
    AS[Autoscale Rules]
    User -->|HTTP :80| LB
    LB --> V1
    LB --> V2
    AS -.CPU 25-75%.-> V1
    AS -.CPU 25-75%.-> V2
```
