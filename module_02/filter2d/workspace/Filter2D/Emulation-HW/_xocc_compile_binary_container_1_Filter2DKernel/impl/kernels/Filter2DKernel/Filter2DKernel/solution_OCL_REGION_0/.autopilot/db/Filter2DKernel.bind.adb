<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="14">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>Filter2DKernel</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>8</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>gmem1</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>256</bitwidth>
				</Value>
				<direction>2</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>gmem0</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>256</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>coeffs</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>coeffs</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>src_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>src.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_5">
				<Value>
					<Obj>
						<type>1</type>
						<id>5</id>
						<name>width</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>width</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_6">
				<Value>
					<Obj>
						<type>1</type>
						<id>6</id>
						<name>height</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>height</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_7">
				<Value>
					<Obj>
						<type>1</type>
						<id>7</id>
						<name>stride</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>stride</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_8">
				<Value>
					<Obj>
						<type>1</type>
						<id>8</id>
						<name>dst_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>dst.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>19</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>9</id>
						<name>dst_V_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>dst.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>64</item>
					<item>65</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>10</id>
						<name>stride_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>stride</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>67</item>
					<item>68</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>11</id>
						<name>height_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>height</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>69</item>
					<item>70</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>12</id>
						<name>width_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>width</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>71</item>
					<item>72</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>13</id>
						<name>src_V_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>src.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>73</item>
					<item>74</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_14">
				<Value>
					<Obj>
						<type>0</type>
						<id>14</id>
						<name>coeffs_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>coeffs</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>75</item>
					<item>76</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_15">
				<Value>
					<Obj>
						<type>0</type>
						<id>15</id>
						<name>dst_V_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>78</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_16">
				<Value>
					<Obj>
						<type>0</type>
						<id>16</id>
						<name>coeffs_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>79</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_17">
				<Value>
					<Obj>
						<type>0</type>
						<id>19</id>
						<name>height_c2</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>80</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_18">
				<Value>
					<Obj>
						<type>0</type>
						<id>20</id>
						<name>width_c1</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>81</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_19">
				<Value>
					<Obj>
						<type>0</type>
						<id>21</id>
						<name>stride_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>82</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_20">
				<Value>
					<Obj>
						<type>0</type>
						<id>22</id>
						<name>height_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>83</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_21">
				<Value>
					<Obj>
						<type>0</type>
						<id>23</id>
						<name>width_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>84</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_22">
				<Value>
					<Obj>
						<type>0</type>
						<id>29</id>
						<name>src_pixels_V</name>
						<fileName>/home/centos/SME-Developer-Labs/module_02/filter2d/workspace/Filter2D/src/kernel/filter2d.cpp</fileName>
						<fileDirectory>/home/centos/SME-Developer-Labs/module_02/filter2d/workspace/Filter2D/Emulation-HW/_xocc_compile_binary_container_1_Filter2DKernel/impl/kernels/Filter2DKernel</fileDirectory>
						<lineNumber>79</lineNumber>
						<contextFuncName>Filter2DKernel</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="11" tracking_level="0" version="0">
								<first>/home/centos/SME-Developer-Labs/module_02/filter2d/workspace/Filter2D/Emulation-HW/_xocc_compile_binary_container_1_Filter2DKernel/impl/kernels/Filter2DKernel</first>
								<second class_id="12" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="13" tracking_level="0" version="0">
										<first class_id="14" tracking_level="0" version="0">
											<first>/home/centos/SME-Developer-Labs/module_02/filter2d/workspace/Filter2D/src/kernel/filter2d.cpp</first>
											<second>Filter2DKernel</second>
										</first>
										<second>79</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>src_pixels.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>85</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_23">
				<Value>
					<Obj>
						<type>0</type>
						<id>32</id>
						<name>dst_pixels_V</name>
						<fileName>/home/centos/SME-Developer-Labs/module_02/filter2d/workspace/Filter2D/src/kernel/filter2d.cpp</fileName>
						<fileDirectory>/home/centos/SME-Developer-Labs/module_02/filter2d/workspace/Filter2D/Emulation-HW/_xocc_compile_binary_container_1_Filter2DKernel/impl/kernels/Filter2DKernel</fileDirectory>
						<lineNumber>80</lineNumber>
						<contextFuncName>Filter2DKernel</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/SME-Developer-Labs/module_02/filter2d/workspace/Filter2D/Emulation-HW/_xocc_compile_binary_container_1_Filter2DKernel/impl/kernels/Filter2DKernel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/SME-Developer-Labs/module_02/filter2d/workspace/Filter2D/src/kernel/filter2d.cpp</first>
											<second>Filter2DKernel</second>
										</first>
										<second>80</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>dst_pixels.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>86</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_24">
				<Value>
					<Obj>
						<type>0</type>
						<id>54</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>14</count>
					<item_version>0</item_version>
					<item>88</item>
					<item>89</item>
					<item>90</item>
					<item>91</item>
					<item>92</item>
					<item>93</item>
					<item>94</item>
					<item>95</item>
					<item>96</item>
					<item>97</item>
					<item>98</item>
					<item>99</item>
					<item>100</item>
					<item>101</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_25">
				<Value>
					<Obj>
						<type>0</type>
						<id>59</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>11</count>
					<item_version>0</item_version>
					<item>103</item>
					<item>104</item>
					<item>105</item>
					<item>106</item>
					<item>107</item>
					<item>108</item>
					<item>109</item>
					<item>110</item>
					<item>111</item>
					<item>615</item>
					<item>616</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_26">
				<Value>
					<Obj>
						<type>0</type>
						<id>60</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>113</item>
					<item>114</item>
					<item>115</item>
					<item>116</item>
					<item>117</item>
					<item>118</item>
					<item>119</item>
					<item>614</item>
					<item>617</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_27">
				<Value>
					<Obj>
						<type>0</type>
						<id>61</id>
						<name></name>
						<fileName>/home/centos/SME-Developer-Labs/module_02/filter2d/workspace/Filter2D/src/kernel/filter2d.cpp</fileName>
						<fileDirectory>/home/centos/SME-Developer-Labs/module_02/filter2d/workspace/Filter2D/Emulation-HW/_xocc_compile_binary_container_1_Filter2DKernel/impl/kernels/Filter2DKernel</fileDirectory>
						<lineNumber>95</lineNumber>
						<contextFuncName>Filter2DKernel</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/SME-Developer-Labs/module_02/filter2d/workspace/Filter2D/Emulation-HW/_xocc_compile_binary_container_1_Filter2DKernel/impl/kernels/Filter2DKernel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/SME-Developer-Labs/module_02/filter2d/workspace/Filter2D/src/kernel/filter2d.cpp</first>
											<second>Filter2DKernel</second>
										</first>
										<second>95</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_28">
				<Value>
					<Obj>
						<type>2</type>
						<id>77</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_29">
				<Value>
					<Obj>
						<type>2</type>
						<id>87</id>
						<name>AXIBursts2PixelStream8</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:AXIBursts2PixelStream8&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_30">
				<Value>
					<Obj>
						<type>2</type>
						<id>102</id>
						<name>Filter2D</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Filter2D&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_31">
				<Value>
					<Obj>
						<type>2</type>
						<id>112</id>
						<name>PixelStream2AXIBursts</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:PixelStream2AXIBursts&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_32">
				<Obj>
					<type>3</type>
					<id>62</id>
					<name>Filter2DKernel</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>19</count>
					<item_version>0</item_version>
					<item>9</item>
					<item>10</item>
					<item>11</item>
					<item>12</item>
					<item>13</item>
					<item>14</item>
					<item>15</item>
					<item>16</item>
					<item>19</item>
					<item>20</item>
					<item>21</item>
					<item>22</item>
					<item>23</item>
					<item>29</item>
					<item>32</item>
					<item>54</item>
					<item>59</item>
					<item>60</item>
					<item>61</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>49</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_33">
				<id>65</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>9</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_34">
				<id>68</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>10</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_35">
				<id>70</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>11</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_36">
				<id>72</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>12</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_37">
				<id>74</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>13</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_38">
				<id>76</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>14</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_39">
				<id>78</id>
				<edge_type>1</edge_type>
				<source_obj>77</source_obj>
				<sink_obj>15</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_40">
				<id>79</id>
				<edge_type>1</edge_type>
				<source_obj>77</source_obj>
				<sink_obj>16</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_41">
				<id>80</id>
				<edge_type>1</edge_type>
				<source_obj>77</source_obj>
				<sink_obj>19</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_42">
				<id>81</id>
				<edge_type>1</edge_type>
				<source_obj>77</source_obj>
				<sink_obj>20</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_43">
				<id>82</id>
				<edge_type>1</edge_type>
				<source_obj>77</source_obj>
				<sink_obj>21</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_44">
				<id>83</id>
				<edge_type>1</edge_type>
				<source_obj>77</source_obj>
				<sink_obj>22</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_45">
				<id>84</id>
				<edge_type>1</edge_type>
				<source_obj>77</source_obj>
				<sink_obj>23</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_46">
				<id>85</id>
				<edge_type>1</edge_type>
				<source_obj>77</source_obj>
				<sink_obj>29</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_47">
				<id>86</id>
				<edge_type>1</edge_type>
				<source_obj>77</source_obj>
				<sink_obj>32</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_48">
				<id>88</id>
				<edge_type>1</edge_type>
				<source_obj>87</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_49">
				<id>89</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_50">
				<id>90</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_51">
				<id>91</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_52">
				<id>92</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_53">
				<id>93</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_54">
				<id>94</id>
				<edge_type>1</edge_type>
				<source_obj>29</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_55">
				<id>95</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_56">
				<id>96</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_57">
				<id>97</id>
				<edge_type>1</edge_type>
				<source_obj>21</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_58">
				<id>98</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_59">
				<id>99</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_60">
				<id>100</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_61">
				<id>101</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_62">
				<id>103</id>
				<edge_type>1</edge_type>
				<source_obj>102</source_obj>
				<sink_obj>59</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_63">
				<id>104</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>59</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_64">
				<id>105</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>59</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_65">
				<id>106</id>
				<edge_type>1</edge_type>
				<source_obj>29</source_obj>
				<sink_obj>59</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_66">
				<id>107</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>59</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_67">
				<id>108</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>59</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_68">
				<id>109</id>
				<edge_type>1</edge_type>
				<source_obj>32</source_obj>
				<sink_obj>59</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_69">
				<id>110</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>59</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_70">
				<id>111</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>59</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_71">
				<id>113</id>
				<edge_type>1</edge_type>
				<source_obj>112</source_obj>
				<sink_obj>60</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_72">
				<id>114</id>
				<edge_type>1</edge_type>
				<source_obj>32</source_obj>
				<sink_obj>60</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_73">
				<id>115</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>60</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_74">
				<id>116</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>60</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_75">
				<id>117</id>
				<edge_type>1</edge_type>
				<source_obj>21</source_obj>
				<sink_obj>60</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_76">
				<id>118</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>60</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_77">
				<id>119</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>60</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_78">
				<id>614</id>
				<edge_type>4</edge_type>
				<source_obj>59</source_obj>
				<sink_obj>60</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_79">
				<id>615</id>
				<edge_type>4</edge_type>
				<source_obj>54</source_obj>
				<sink_obj>59</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_80">
				<id>616</id>
				<edge_type>4</edge_type>
				<source_obj>54</source_obj>
				<sink_obj>59</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_81">
				<id>617</id>
				<edge_type>4</edge_type>
				<source_obj>59</source_obj>
				<sink_obj>60</sink_obj>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_82">
			<mId>1</mId>
			<mTag>Filter2DKernel</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>62</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>1074069736</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_83">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>3</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_84">
						<type>0</type>
						<name>AXIBursts2PixelStream8_U0</name>
						<ssdmobj_id>54</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>13</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_85">
								<port class_id="29" tracking_level="1" version="0" object_id="_86">
									<name>axi_V</name>
									<dir>1</dir>
									<type>0</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_87">
									<type>0</type>
									<name>AXIBursts2PixelStream8_U0</name>
									<ssdmobj_id>54</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_88">
								<port class_id_reference="29" object_id="_89">
									<name>axi_V_offset</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_87"></inst>
							</item>
							<item class_id_reference="28" object_id="_90">
								<port class_id_reference="29" object_id="_91">
									<name>width</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_87"></inst>
							</item>
							<item class_id_reference="28" object_id="_92">
								<port class_id_reference="29" object_id="_93">
									<name>height</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_87"></inst>
							</item>
							<item class_id_reference="28" object_id="_94">
								<port class_id_reference="29" object_id="_95">
									<name>stride</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_87"></inst>
							</item>
							<item class_id_reference="28" object_id="_96">
								<port class_id_reference="29" object_id="_97">
									<name>stream_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_87"></inst>
							</item>
							<item class_id_reference="28" object_id="_98">
								<port class_id_reference="29" object_id="_99">
									<name>width_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_87"></inst>
							</item>
							<item class_id_reference="28" object_id="_100">
								<port class_id_reference="29" object_id="_101">
									<name>height_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_87"></inst>
							</item>
							<item class_id_reference="28" object_id="_102">
								<port class_id_reference="29" object_id="_103">
									<name>stride_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_87"></inst>
							</item>
							<item class_id_reference="28" object_id="_104">
								<port class_id_reference="29" object_id="_105">
									<name>coeffs</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_87"></inst>
							</item>
							<item class_id_reference="28" object_id="_106">
								<port class_id_reference="29" object_id="_107">
									<name>dst_V</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_87"></inst>
							</item>
							<item class_id_reference="28" object_id="_108">
								<port class_id_reference="29" object_id="_109">
									<name>coeffs_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_87"></inst>
							</item>
							<item class_id_reference="28" object_id="_110">
								<port class_id_reference="29" object_id="_111">
									<name>dst_V_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_87"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_112">
						<type>0</type>
						<name>Filter2D_U0</name>
						<ssdmobj_id>59</ssdmobj_id>
						<pins>
							<count>8</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_113">
								<port class_id_reference="29" object_id="_114">
									<name>srcCoeffs</name>
									<dir>1</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_115">
									<type>0</type>
									<name>Filter2D_U0</name>
									<ssdmobj_id>59</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_116">
								<port class_id_reference="29" object_id="_117">
									<name>srcCoeffs_offset</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_115"></inst>
							</item>
							<item class_id_reference="28" object_id="_118">
								<port class_id_reference="29" object_id="_119">
									<name>srcImg_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_115"></inst>
							</item>
							<item class_id_reference="28" object_id="_120">
								<port class_id_reference="29" object_id="_121">
									<name>width</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_115"></inst>
							</item>
							<item class_id_reference="28" object_id="_122">
								<port class_id_reference="29" object_id="_123">
									<name>height</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_115"></inst>
							</item>
							<item class_id_reference="28" object_id="_124">
								<port class_id_reference="29" object_id="_125">
									<name>dstImg_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_115"></inst>
							</item>
							<item class_id_reference="28" object_id="_126">
								<port class_id_reference="29" object_id="_127">
									<name>width_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_115"></inst>
							</item>
							<item class_id_reference="28" object_id="_128">
								<port class_id_reference="29" object_id="_129">
									<name>height_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_115"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_130">
						<type>0</type>
						<name>PixelStream2AXIBursts_U0</name>
						<ssdmobj_id>60</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_131">
								<port class_id_reference="29" object_id="_132">
									<name>stream_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_133">
									<type>0</type>
									<name>PixelStream2AXIBursts_U0</name>
									<ssdmobj_id>60</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_134">
								<port class_id_reference="29" object_id="_135">
									<name>width</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_133"></inst>
							</item>
							<item class_id_reference="28" object_id="_136">
								<port class_id_reference="29" object_id="_137">
									<name>height</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_133"></inst>
							</item>
							<item class_id_reference="28" object_id="_138">
								<port class_id_reference="29" object_id="_139">
									<name>stride</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_133"></inst>
							</item>
							<item class_id_reference="28" object_id="_140">
								<port class_id_reference="29" object_id="_141">
									<name>aximm_V</name>
									<dir>1</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_133"></inst>
							</item>
							<item class_id_reference="28" object_id="_142">
								<port class_id_reference="29" object_id="_143">
									<name>aximm_V_offset</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_133"></inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>9</count>
					<item_version>0</item_version>
					<item class_id="32" tracking_level="1" version="0" object_id="_144">
						<type>1</type>
						<name>src_pixels_V</name>
						<ssdmobj_id>29</ssdmobj_id>
						<ctype>0</ctype>
						<depth>64</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_145">
							<port class_id_reference="29" object_id="_146">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_87"></inst>
						</source>
						<sink class_id_reference="28" object_id="_147">
							<port class_id_reference="29" object_id="_148">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_115"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_149">
						<type>1</type>
						<name>width_c</name>
						<ssdmobj_id>23</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_150">
							<port class_id_reference="29" object_id="_151">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_87"></inst>
						</source>
						<sink class_id_reference="28" object_id="_152">
							<port class_id_reference="29" object_id="_153">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_115"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_154">
						<type>1</type>
						<name>height_c</name>
						<ssdmobj_id>22</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_155">
							<port class_id_reference="29" object_id="_156">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_87"></inst>
						</source>
						<sink class_id_reference="28" object_id="_157">
							<port class_id_reference="29" object_id="_158">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_115"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_159">
						<type>1</type>
						<name>stride_c</name>
						<ssdmobj_id>21</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_160">
							<port class_id_reference="29" object_id="_161">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_87"></inst>
						</source>
						<sink class_id_reference="28" object_id="_162">
							<port class_id_reference="29" object_id="_163">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_133"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_164">
						<type>1</type>
						<name>coeffs_c</name>
						<ssdmobj_id>16</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_165">
							<port class_id_reference="29" object_id="_166">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_87"></inst>
						</source>
						<sink class_id_reference="28" object_id="_167">
							<port class_id_reference="29" object_id="_168">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_115"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_169">
						<type>1</type>
						<name>dst_V_c</name>
						<ssdmobj_id>15</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_170">
							<port class_id_reference="29" object_id="_171">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_87"></inst>
						</source>
						<sink class_id_reference="28" object_id="_172">
							<port class_id_reference="29" object_id="_173">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_133"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_174">
						<type>1</type>
						<name>dst_pixels_V</name>
						<ssdmobj_id>32</ssdmobj_id>
						<ctype>0</ctype>
						<depth>64</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_175">
							<port class_id_reference="29" object_id="_176">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_115"></inst>
						</source>
						<sink class_id_reference="28" object_id="_177">
							<port class_id_reference="29" object_id="_178">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_133"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_179">
						<type>1</type>
						<name>width_c1</name>
						<ssdmobj_id>20</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_180">
							<port class_id_reference="29" object_id="_181">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_115"></inst>
						</source>
						<sink class_id_reference="28" object_id="_182">
							<port class_id_reference="29" object_id="_183">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_133"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_184">
						<type>1</type>
						<name>height_c2</name>
						<ssdmobj_id>19</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_185">
							<port class_id_reference="29" object_id="_186">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_115"></inst>
						</source>
						<sink class_id_reference="28" object_id="_187">
							<port class_id_reference="29" object_id="_188">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_133"></inst>
						</sink>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="34" tracking_level="1" version="0" object_id="_189">
		<states class_id="35" tracking_level="0" version="0">
			<count>6</count>
			<item_version>0</item_version>
			<item class_id="36" tracking_level="1" version="0" object_id="_190">
				<id>1</id>
				<operations class_id="37" tracking_level="0" version="0">
					<count>16</count>
					<item_version>0</item_version>
					<item class_id="38" tracking_level="1" version="0" object_id="_191">
						<id>9</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_192">
						<id>10</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_193">
						<id>11</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_194">
						<id>12</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_195">
						<id>13</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_196">
						<id>14</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_197">
						<id>15</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_198">
						<id>16</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_199">
						<id>19</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_200">
						<id>20</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_201">
						<id>21</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_202">
						<id>22</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_203">
						<id>23</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_204">
						<id>29</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_205">
						<id>32</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_206">
						<id>54</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_207">
				<id>2</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_208">
						<id>54</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_209">
				<id>3</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_210">
						<id>59</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_211">
				<id>4</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_212">
						<id>59</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_213">
				<id>5</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_214">
						<id>60</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_215">
				<id>6</id>
				<operations>
					<count>36</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_216">
						<id>17</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_217">
						<id>18</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_218">
						<id>24</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_219">
						<id>25</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_220">
						<id>26</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_221">
						<id>27</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_222">
						<id>28</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_223">
						<id>30</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_224">
						<id>31</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_225">
						<id>33</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_226">
						<id>34</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_227">
						<id>35</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_228">
						<id>36</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_229">
						<id>37</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_230">
						<id>38</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_231">
						<id>39</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_232">
						<id>40</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_233">
						<id>41</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_234">
						<id>42</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_235">
						<id>43</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_236">
						<id>44</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_237">
						<id>45</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_238">
						<id>46</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_239">
						<id>47</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_240">
						<id>48</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_241">
						<id>49</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_242">
						<id>50</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_243">
						<id>51</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_244">
						<id>52</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_245">
						<id>53</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_246">
						<id>55</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_247">
						<id>56</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_248">
						<id>57</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_249">
						<id>58</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_250">
						<id>60</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="38" object_id="_251">
						<id>61</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
		</states>
		<transitions class_id="39" tracking_level="0" version="0">
			<count>5</count>
			<item_version>0</item_version>
			<item class_id="40" tracking_level="1" version="0" object_id="_252">
				<inState>1</inState>
				<outState>2</outState>
				<condition class_id="41" tracking_level="0" version="0">
					<id>0</id>
					<sop class_id="42" tracking_level="0" version="0">
						<count>1</count>
						<item_version>0</item_version>
						<item class_id="43" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_253">
				<inState>2</inState>
				<outState>3</outState>
				<condition>
					<id>1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_254">
				<inState>3</inState>
				<outState>4</outState>
				<condition>
					<id>2</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_255">
				<inState>4</inState>
				<outState>5</outState>
				<condition>
					<id>3</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_256">
				<inState>5</inState>
				<outState>6</outState>
				<condition>
					<id>4</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
		</transitions>
	</fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="45" tracking_level="0" version="0">
		<count>19</count>
		<item_version>0</item_version>
		<item class_id="46" tracking_level="0" version="0">
			<first>9</first>
			<second class_id="47" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>10</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>11</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>12</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>13</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>14</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>15</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>16</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>19</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>20</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>21</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>22</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>23</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>29</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>32</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>54</first>
			<second>
				<first>0</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>59</first>
			<second>
				<first>2</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>60</first>
			<second>
				<first>4</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>61</first>
			<second>
				<first>5</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="48" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="49" tracking_level="0" version="0">
			<first>62</first>
			<second class_id="50" tracking_level="0" version="0">
				<first>0</first>
				<second>5</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="51" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="52" tracking_level="1" version="0" object_id="_257">
			<region_name>Filter2DKernel</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>62</item>
			</basic_blocks>
			<nodes>
				<count>53</count>
				<item_version>0</item_version>
				<item>9</item>
				<item>10</item>
				<item>11</item>
				<item>12</item>
				<item>13</item>
				<item>14</item>
				<item>15</item>
				<item>16</item>
				<item>17</item>
				<item>18</item>
				<item>19</item>
				<item>20</item>
				<item>21</item>
				<item>22</item>
				<item>23</item>
				<item>24</item>
				<item>25</item>
				<item>26</item>
				<item>27</item>
				<item>28</item>
				<item>29</item>
				<item>30</item>
				<item>31</item>
				<item>32</item>
				<item>33</item>
				<item>34</item>
				<item>35</item>
				<item>36</item>
				<item>37</item>
				<item>38</item>
				<item>39</item>
				<item>40</item>
				<item>41</item>
				<item>42</item>
				<item>43</item>
				<item>44</item>
				<item>45</item>
				<item>46</item>
				<item>47</item>
				<item>48</item>
				<item>49</item>
				<item>50</item>
				<item>51</item>
				<item>52</item>
				<item>53</item>
				<item>54</item>
				<item>55</item>
				<item>56</item>
				<item>57</item>
				<item>58</item>
				<item>59</item>
				<item>60</item>
				<item>61</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="53" tracking_level="0" version="0">
		<count>18</count>
		<item_version>0</item_version>
		<item class_id="54" tracking_level="0" version="0">
			<first>212</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>15</item>
			</second>
		</item>
		<item>
			<first>216</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>220</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>19</item>
			</second>
		</item>
		<item>
			<first>224</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>20</item>
			</second>
		</item>
		<item>
			<first>228</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>21</item>
			</second>
		</item>
		<item>
			<first>232</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>22</item>
			</second>
		</item>
		<item>
			<first>236</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>23</item>
			</second>
		</item>
		<item>
			<first>240</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>29</item>
			</second>
		</item>
		<item>
			<first>244</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>32</item>
			</second>
		</item>
		<item>
			<first>248</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>9</item>
			</second>
		</item>
		<item>
			<first>254</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>10</item>
			</second>
		</item>
		<item>
			<first>260</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>11</item>
			</second>
		</item>
		<item>
			<first>266</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>12</item>
			</second>
		</item>
		<item>
			<first>272</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>13</item>
			</second>
		</item>
		<item>
			<first>278</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>14</item>
			</second>
		</item>
		<item>
			<first>284</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>59</item>
				<item>59</item>
			</second>
		</item>
		<item>
			<first>297</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>60</item>
				<item>60</item>
			</second>
		</item>
		<item>
			<first>308</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>54</item>
				<item>54</item>
			</second>
		</item>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="56" tracking_level="0" version="0">
		<count>9</count>
		<item_version>0</item_version>
		<item class_id="57" tracking_level="0" version="0">
			<first>coeffs_c_fu_216</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>dst_V_c_fu_212</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>15</item>
			</second>
		</item>
		<item>
			<first>dst_pixels_V_fu_244</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>32</item>
			</second>
		</item>
		<item>
			<first>height_c2_fu_220</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>19</item>
			</second>
		</item>
		<item>
			<first>height_c_fu_232</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>22</item>
			</second>
		</item>
		<item>
			<first>src_pixels_V_fu_240</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>29</item>
			</second>
		</item>
		<item>
			<first>stride_c_fu_228</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>21</item>
			</second>
		</item>
		<item>
			<first>width_c1_fu_224</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>20</item>
			</second>
		</item>
		<item>
			<first>width_c_fu_236</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>23</item>
			</second>
		</item>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>3</count>
		<item_version>0</item_version>
		<item>
			<first>grp_AXIBursts2PixelStream8_fu_308</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>54</item>
				<item>54</item>
			</second>
		</item>
		<item>
			<first>grp_Filter2D_fu_284</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>59</item>
				<item>59</item>
			</second>
		</item>
		<item>
			<first>grp_PixelStream2AXIBursts_fu_297</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>60</item>
				<item>60</item>
			</second>
		</item>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>6</count>
		<item_version>0</item_version>
		<item>
			<first>coeffs_read_read_fu_278</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>14</item>
			</second>
		</item>
		<item>
			<first>dst_V_read_read_fu_248</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>9</item>
			</second>
		</item>
		<item>
			<first>height_read_read_fu_260</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>11</item>
			</second>
		</item>
		<item>
			<first>src_V_read_read_fu_272</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>13</item>
			</second>
		</item>
		<item>
			<first>stride_read_read_fu_254</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>10</item>
			</second>
		</item>
		<item>
			<first>width_read_read_fu_266</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>12</item>
			</second>
		</item>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="58" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>15</count>
		<item_version>0</item_version>
		<item>
			<first>332</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>9</item>
			</second>
		</item>
		<item>
			<first>337</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>10</item>
			</second>
		</item>
		<item>
			<first>342</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>11</item>
			</second>
		</item>
		<item>
			<first>347</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>12</item>
			</second>
		</item>
		<item>
			<first>352</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>13</item>
			</second>
		</item>
		<item>
			<first>357</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>14</item>
			</second>
		</item>
		<item>
			<first>362</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>15</item>
			</second>
		</item>
		<item>
			<first>368</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>374</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>19</item>
			</second>
		</item>
		<item>
			<first>380</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>20</item>
			</second>
		</item>
		<item>
			<first>386</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>21</item>
			</second>
		</item>
		<item>
			<first>392</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>22</item>
			</second>
		</item>
		<item>
			<first>398</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>23</item>
			</second>
		</item>
		<item>
			<first>404</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>29</item>
			</second>
		</item>
		<item>
			<first>410</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>32</item>
			</second>
		</item>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>15</count>
		<item_version>0</item_version>
		<item>
			<first>coeffs_c_reg_368</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>coeffs_read_reg_357</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>14</item>
			</second>
		</item>
		<item>
			<first>dst_V_c_reg_362</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>15</item>
			</second>
		</item>
		<item>
			<first>dst_V_read_reg_332</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>9</item>
			</second>
		</item>
		<item>
			<first>dst_pixels_V_reg_410</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>32</item>
			</second>
		</item>
		<item>
			<first>height_c2_reg_374</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>19</item>
			</second>
		</item>
		<item>
			<first>height_c_reg_392</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>22</item>
			</second>
		</item>
		<item>
			<first>height_read_reg_342</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>11</item>
			</second>
		</item>
		<item>
			<first>src_V_read_reg_352</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>13</item>
			</second>
		</item>
		<item>
			<first>src_pixels_V_reg_404</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>29</item>
			</second>
		</item>
		<item>
			<first>stride_c_reg_386</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>21</item>
			</second>
		</item>
		<item>
			<first>stride_read_reg_337</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>10</item>
			</second>
		</item>
		<item>
			<first>width_c1_reg_380</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>20</item>
			</second>
		</item>
		<item>
			<first>width_c_reg_398</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>23</item>
			</second>
		</item>
		<item>
			<first>width_read_reg_347</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>12</item>
			</second>
		</item>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="59" tracking_level="0" version="0">
		<count>8</count>
		<item_version>0</item_version>
		<item class_id="60" tracking_level="0" version="0">
			<first>coeffs</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>read</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>14</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>dst_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>read</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>9</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>gmem0</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>54</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>gmem1</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>2</count>
						<item_version>0</item_version>
						<item>59</item>
						<item>60</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>height</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>read</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>11</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>src_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>read</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>13</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>stride</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>read</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>10</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>width</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>read</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>12</item>
					</second>
				</item>
			</second>
		</item>
	</dp_port_io_nodes>
	<port2core class_id="61" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>9</count>
		<item_version>0</item_version>
		<item class_id="62" tracking_level="0" version="0">
			<first>15</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>16</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>19</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>20</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>21</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>22</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>23</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>29</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>32</first>
			<second>FIFO</second>
		</item>
	</node2core>
</syndb>
</boost_serialization>

