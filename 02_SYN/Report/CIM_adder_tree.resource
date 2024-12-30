 
****************************************
Report : resources
Design : CIM_adder_tree
Version: P-2019.03-SP1-1
Date   : Sun Dec 29 22:58:48 2024
****************************************


Resource Report for this hierarchy in file ../01_RTL/CIM_adder_tree.v
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| ash_3          | DW_leftsh      | A_width=12 | sll_109 (CIM_adder_tree.v:109) |
             |                | SH_width=32 |                           |
| add_x_4        | DW01_add       | width=13   | add_123 (CIM_adder_tree.v:123) |
| sub_x_2        | DW01_dec       | width=4    | sub_109 (CIM_adder_tree.v:109) |
             |                |            | sub_70 (CIM_adder_tree.v:70) |
| DP_OP_70J1_122_7730             |            |                            |
|                | DP_OP_70J1_122_7730 |       |                            |
=============================================================================

Datapath Report for DP_OP_70J1_122_7730
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_70J1_122_7730  | add_96 (CIM_adder_tree.v:96)                        |
|                      | add_96_2 (CIM_adder_tree.v:96)                      |
|                      | add_96_3 (CIM_adder_tree.v:96)                      |
|                      | add_96_4 (CIM_adder_tree.v:96)                      |
|                      | add_96_5 (CIM_adder_tree.v:96)                      |
|                      | add_96_6 (CIM_adder_tree.v:96)                      |
|                      | add_96_7 (CIM_adder_tree.v:96)                      |
|                      | add_96_8 (CIM_adder_tree.v:96)                      |
|                      | add_96_9 (CIM_adder_tree.v:96)                      |
|                      | add_96_10 (CIM_adder_tree.v:96)                     |
|                      | add_96_11 (CIM_adder_tree.v:96)                     |
|                      | add_96_12 (CIM_adder_tree.v:96)                     |
|                      | add_96_13 (CIM_adder_tree.v:96)                     |
|                      | add_96_14 (CIM_adder_tree.v:96)                     |
|                      | add_96_15 (CIM_adder_tree.v:96)                     |
|                      | add_96_16 (CIM_adder_tree.v:96)                     |
|                      | add_96_17 (CIM_adder_tree.v:96)                     |
|                      | add_96_18 (CIM_adder_tree.v:96)                     |
|                      | add_96_19 (CIM_adder_tree.v:96)                     |
|                      | add_96_20 (CIM_adder_tree.v:96)                     |
|                      | add_96_21 (CIM_adder_tree.v:96)                     |
|                      | add_96_22 (CIM_adder_tree.v:96)                     |
|                      | add_96_23 (CIM_adder_tree.v:96)                     |
|                      | add_96_24 (CIM_adder_tree.v:96)                     |
|                      | add_96_25 (CIM_adder_tree.v:96)                     |
|                      | add_96_26 (CIM_adder_tree.v:96)                     |
|                      | add_96_27 (CIM_adder_tree.v:96)                     |
|                      | add_96_28 (CIM_adder_tree.v:96)                     |
|                      | add_96_29 (CIM_adder_tree.v:96)                     |
|                      | add_96_30 (CIM_adder_tree.v:96)                     |
|                      | add_96_31 (CIM_adder_tree.v:96)                     |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 4     |                                          |
| I2    | PI   | Unsigned | 4     |                                          |
| I3    | PI   | Unsigned | 4     |                                          |
| I4    | PI   | Unsigned | 4     |                                          |
| I5    | PI   | Unsigned | 4     |                                          |
| I6    | PI   | Unsigned | 4     |                                          |
| I7    | PI   | Unsigned | 4     |                                          |
| I8    | PI   | Unsigned | 4     |                                          |
| I9    | PI   | Unsigned | 4     |                                          |
| I10   | PI   | Unsigned | 4     |                                          |
| I11   | PI   | Unsigned | 4     |                                          |
| I12   | PI   | Unsigned | 4     |                                          |
| I13   | PI   | Unsigned | 4     |                                          |
| I14   | PI   | Unsigned | 4     |                                          |
| I15   | PI   | Unsigned | 4     |                                          |
| I16   | PI   | Unsigned | 4     |                                          |
| I17   | PI   | Unsigned | 4     |                                          |
| I18   | PI   | Unsigned | 4     |                                          |
| I19   | PI   | Unsigned | 4     |                                          |
| I20   | PI   | Unsigned | 4     |                                          |
| I21   | PI   | Unsigned | 4     |                                          |
| I22   | PI   | Unsigned | 4     |                                          |
| I23   | PI   | Unsigned | 4     |                                          |
| I24   | PI   | Unsigned | 4     |                                          |
| I25   | PI   | Unsigned | 4     |                                          |
| I26   | PI   | Unsigned | 4     |                                          |
| I27   | PI   | Unsigned | 4     |                                          |
| I28   | PI   | Unsigned | 4     |                                          |
| I29   | PI   | Unsigned | 4     |                                          |
| I30   | PI   | Unsigned | 4     |                                          |
| I31   | PI   | Unsigned | 4     |                                          |
| I32   | PI   | Unsigned | 4     |                                          |
| O1    | PO   | Unsigned | 9     | I1 + I2 + I3 + I4 + I5 + I6 + I7 + I8 + I9 + I10 + I11 + I12 + I13 + I14 + I15 + I16 + I17 + I18 + I19 + I20 + I21 + I22 + I23 + I24 + I25 + I26 + I27 + I28 + I29 + I30 + I31 + I32 (CIM_adder_tree.v:96) |
==============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| ash_3              | DW_leftsh        | astr (area)        |                |
| add_x_4            | DW01_add         | apparch (area)     |                |
| sub_x_2            | DW01_dec         | apparch (area)     |                |
| DP_OP_70J1_122_7730                   |                    |                |
|                    | DP_OP_70J1_122_7730 | str (area)      |                |
===============================================================================

1
