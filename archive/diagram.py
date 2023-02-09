# diagram.py
from diagrams import Cluster, Diagram
from diagrams.azure.network import Firewall, VirtualNetworks, Subnets
from diagrams.azure.compute import ContainerInstances
from diagrams.azure.general import Resourcegroups

with Diagram("Azure Pi-Hole"):
    with Cluster("Resource Group"):
        firewalls = [Firewall("firewall1"),
                     Firewall("firewall2"),
                     Firewall("firewall3")]
