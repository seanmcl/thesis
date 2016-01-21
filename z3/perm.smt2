
(declare-datatypes () ((Vpc
                        vpc-9080bff5
                        vpc-9680bff3
                        vpc-9780bff2
                        )))

(declare-datatypes () ((Subnet
                        subnet-60c5c605
                        subnet-62c5c607
                        subnet-63c5c606
                        subnet-6dc5c608
                        )))

(declare-datatypes () ((Instance
                        i-23787de7
                        i-23797ce7
                        i-24787de0
                        i-8a787d4e
                        i-fd7b7e39
                        )))

(declare-fun instance (Instance, Subnet) Bool)


instance(i-24787de0, subnet-62c5c607).
instance(i-8a787d4e, subnet-6dc5c608).
instance(i-23787de7, subnet-62c5c607).
instance(i-23797ce7, subnet-60c5c605).
instance(i-fd7b7e39, subnet-63c5c606).
internetGatewayAttachment(igw-b4bfcad1, available, vpc-9680bff3).
networkAcl(acl-a182b9c4, vpc-9680bff3).
networkAcl(acl-bf82b9da, vpc-9080bff5).
networkAcl(acl-bc82b9d9, vpc-9680bff3).
networkAcl(acl-a382b9c6, vpc-9080bff5).
networkAcl(acl-bd82b9d8, vpc-9680bff3).
networkAcl(acl-a682b9c3, vpc-9780bff2).
networkAcl(acl-b282b9d7, vpc-9780bff2).
networkAclAssociation(aclassoc-99c4a3fe, acl-bf82b9da, subnet-6dc5c608).
networkAclAssociation(aclassoc-9ac4a3fd, acl-bc82b9d9, subnet-63c5c606).
networkAclAssociation(aclassoc-65c3a402, acl-bd82b9d8, subnet-62c5c607).
networkAclAssociation(aclassoc-9bc4a3fc, acl-b282b9d7, subnet-60c5c605).
networkAclEntry(acl-a182b9c4, 100, all, allow, egress, 0.0.0.0/0, _, _).
networkAclEntry(acl-a182b9c4, 32767, all, deny, egress, 0.0.0.0/0, _, _).
networkAclEntry(acl-a182b9c4, 100, all, allow, ingress, 0.0.0.0/0, _, _).
networkAclEntry(acl-a182b9c4, 32767, all, deny, ingress, 0.0.0.0/0, _, _).
networkAclEntry(acl-bf82b9da, 100, tcp, allow, egress, 10.0.0.0/24, _, 35000-65000).
networkAclEntry(acl-bf82b9da, 200, tcp, allow, egress, 10.2.0.0/24, _, 22-22).
networkAclEntry(acl-bf82b9da, 32767, all, deny, egress, 0.0.0.0/0, _, _).
networkAclEntry(acl-bf82b9da, 100, tcp, allow, ingress, 10.0.0.0/24, _, 22-22).
networkAclEntry(acl-bf82b9da, 200, tcp, allow, ingress, 10.2.0.0/24, _, 35000-65000).
networkAclEntry(acl-bf82b9da, 32767, all, deny, ingress, 0.0.0.0/0, _, _).
networkAclEntry(acl-bc82b9d9, 32767, all, deny, egress, 0.0.0.0/0, _, _).
networkAclEntry(acl-bc82b9d9, 32767, all, deny, ingress, 0.0.0.0/0, _, _).
networkAclEntry(acl-a382b9c6, 100, all, allow, egress, 0.0.0.0/0, _, _).
networkAclEntry(acl-a382b9c6, 32767, all, deny, egress, 0.0.0.0/0, _, _).
networkAclEntry(acl-a382b9c6, 100, all, allow, ingress, 0.0.0.0/0, _, _).
networkAclEntry(acl-a382b9c6, 32767, all, deny, ingress, 0.0.0.0/0, _, _).
networkAclEntry(acl-bd82b9d8, 100, tcp, allow, egress, 10.0.1.0/24, _, 22-22).
networkAclEntry(acl-bd82b9d8, 200, tcp, allow, egress, 10.1.0.0/24, _, 22-22).
networkAclEntry(acl-bd82b9d8, 300, all, allow, egress, 0.0.0.0/0, _, _).
networkAclEntry(acl-bd82b9d8, 32767, all, deny, egress, 0.0.0.0/0, _, _).
networkAclEntry(acl-bd82b9d8, 100, tcp, allow, ingress, 10.0.1.0/24, _, 1024-65000).
networkAclEntry(acl-bd82b9d8, 200, tcp, allow, ingress, 10.1.0.0/24, _, 1024-65000).
networkAclEntry(acl-bd82b9d8, 300, all, allow, ingress, 0.0.0.0/0, _, _).
networkAclEntry(acl-bd82b9d8, 32767, all, deny, ingress, 0.0.0.0/0, _, _).
networkAclEntry(acl-a682b9c3, 100, all, allow, egress, 0.0.0.0/0, _, _).
networkAclEntry(acl-a682b9c3, 32767, all, deny, egress, 0.0.0.0/0, _, _).
networkAclEntry(acl-a682b9c3, 100, all, allow, ingress, 0.0.0.0/0, _, _).
networkAclEntry(acl-a682b9c3, 32767, all, deny, ingress, 0.0.0.0/0, _, _).
networkAclEntry(acl-b282b9d7, 100, tcp, allow, egress, 10.1.0.0/24, _, 35000-65000).
networkAclEntry(acl-b282b9d7, 32767, all, deny, egress, 0.0.0.0/0, _, _).
networkAclEntry(acl-b282b9d7, 100, tcp, allow, ingress, 10.1.0.0/24, _, 22-22).
networkAclEntry(acl-b282b9d7, 32767, all, deny, ingress, 0.0.0.0/0, _, _).
networkInterface(eni-0ba3fb72, subnet-62c5c607, in-use, true).
networkInterface(eni-17a3fb6e, subnet-63c5c606, in-use, true).
networkInterface(eni-03a3fb7a, subnet-6dc5c608, in-use, true).
networkInterface(eni-0aa3fb73, subnet-62c5c607, in-use, true).
networkInterface(eni-16a3fb6f, subnet-60c5c605, in-use, true).
networkInterfaceAssociation(eni-0aa3fb73, 52.26.80.239, 10.0.0.10).
networkInterfaceAttachment(eni-attach-ccde01c6, eni-0ba3fb72, i-23787de7, attached).
networkInterfaceAttachment(eni-attach-aede01a4, eni-17a3fb6e, i-fd7b7e39, attached).
networkInterfaceAttachment(eni-attach-d7de01dd, eni-03a3fb7a, i-8a787d4e, attached).
networkInterfaceAttachment(eni-attach-cdde01c7, eni-0aa3fb73, i-24787de0, attached).
networkInterfaceAttachment(eni-attach-b5de01bf, eni-16a3fb6f, i-23797ce7, attached).
networkInterfaceGroup(eni-0ba3fb72, sg-f2474096).
networkInterfaceGroup(eni-17a3fb6e, sg-f3474097).
networkInterfaceGroup(eni-03a3fb7a, sg-f847409c).
networkInterfaceGroup(eni-0aa3fb73, sg-fc474098).
networkInterfaceGroup(eni-16a3fb6f, sg-f1474095).
networkInterfacePrivateIpAddress(eni-0ba3fb72, 10.0.0.11, true).
networkInterfacePrivateIpAddress(eni-17a3fb6e, 10.0.1.11, true).
networkInterfacePrivateIpAddress(eni-03a3fb7a, 10.1.0.10, true).
networkInterfacePrivateIpAddress(eni-0aa3fb73, 10.0.0.10, true).
networkInterfacePrivateIpAddress(eni-16a3fb6f, 10.2.0.10, true).
routeTable(rtb-aa8886cf, vpc-9080bff5).
routeTable(rtb-b88886dd, vpc-9780bff2).
routeTable(rtb-ba8886df, vpc-9680bff3).
routeTable(rtb-a98886cc, vpc-9780bff2).
routeTable(rtb-bb8886de, vpc-9680bff3).
routeTable(rtb-a88886cd, vpc-9680bff3).
routeTable(rtb-858886e0, vpc-9080bff5).
routeTableAssociation(rtbassoc-11f90a75, rtb-858886e0, subnet-6dc5c608).
routeTableAssociation(rtbassoc-16f90a72, rtb-ba8886df, subnet-63c5c606).
routeTableAssociation(rtbassoc-15f90a71, rtb-b88886dd, subnet-60c5c605).
routeTableAssociation(rtbassoc-17f90a73, rtb-bb8886de, subnet-62c5c607).
routeTableInternetGatewayRoute(rtb-bb8886de, igw-b4bfcad1, 0.0.0.0/0, active).
routeTableVpcPeeringConnectionRoute(rtb-b88886dd, pcx-cbf026a2, 10.1.0.0/16, active).
routeTableVpcPeeringConnectionRoute(rtb-bb8886de, pcx-c8f026a1, 10.1.0.0/16, active).
routeTableVpcPeeringConnectionRoute(rtb-858886e0, pcx-cbf026a2, 10.2.0.0/16, active).
routeTableVpcPeeringConnectionRoute(rtb-858886e0, pcx-c8f026a1, 10.0.0.0/16, active).
securityGroup(sg-1b47407f, vpc-9780bff2).
securityGroup(sg-e4474080, vpc-9680bff3).
securityGroup(sg-e6474082, vpc-9080bff5).
securityGroup(sg-fc474098, vpc-9680bff3).
securityGroup(sg-f2474096, vpc-9680bff3).
securityGroup(sg-f3474097, vpc-9680bff3).
securityGroup(sg-f847409c, vpc-9080bff5).
securityGroup(sg-f1474095, vpc-9780bff2).
securityGroupIpRange(sg-f1474095, egress, all, _, _, 0.0.0.0/0).
securityGroupIpRange(sg-f847409c, egress, all, _, _, 0.0.0.0/0).
securityGroupIpRange(sg-f3474097, egress, all, _, _, 0.0.0.0/0).
securityGroupIpRange(sg-f2474096, egress, all, _, _, 0.0.0.0/0).
securityGroupIpRange(sg-fc474098, egress, all, _, _, 0.0.0.0/0).
securityGroupIpRange(sg-e6474082, egress, all, _, _, 0.0.0.0/0).
securityGroupIpRange(sg-e4474080, egress, all, _, _, 0.0.0.0/0).
securityGroupIpRange(sg-1b47407f, egress, all, _, _, 0.0.0.0/0).
securityGroupIpRange(sg-f1474095, ingress, tcp, 22-22, _, 10.1.0.0/24).
securityGroupIpRange(sg-f847409c, ingress, tcp, 22-22, _, 10.0.0.0/24).
securityGroupUserIdGroupPair(sg-f3474097, ingress, tcp, 22-22, _, sg-fc474098).
securityGroupUserIdGroupPair(sg-e6474082, ingress, all, _, _, sg-e6474082).
securityGroupUserIdGroupPair(sg-e4474080, ingress, all, _, _, sg-e4474080).
securityGroupUserIdGroupPair(sg-1b47407f, ingress, all, _, _, sg-1b47407f).
subnet(subnet-6dc5c608, available, vpc-9080bff5, 10.1.0.0/24, us-west-2a).
subnet(subnet-63c5c606, available, vpc-9680bff3, 10.0.1.0/24, us-west-2a).
subnet(subnet-60c5c605, available, vpc-9780bff2, 10.2.0.0/24, us-west-2a).
subnet(subnet-62c5c607, available, vpc-9680bff3, 10.0.0.0/24, us-west-2a).
vpcPeeringConnection(pcx-c8f026a1, vpc-9680bff3, 10.0.0.0/16, vpc-9080bff5, 10.1.0.0/16, active).
vpcPeeringConnection(pcx-cbf026a2, vpc-9080bff5, 10.1.0.0/16, vpc-9780bff2, 10.2.0.0/16, active).
vpc(vpc-9780bff2, available, 10.2.0.0/16).
vpc(vpc-9080bff5, available, 10.1.0.0/16).
vpc(vpc-9680bff3, available, 10.0.0.0/16).


(assert
