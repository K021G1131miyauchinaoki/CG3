#include "BasicShaderHeader.hlsli"

//VSOutput main(float4 pos : POSITION, float3 normal : NORMAL, float2 uv : TEXCOORD)
VSOutput main(float4 pos : POSITION)
{
	VSOutput output; // ピクセルシェーダーに渡す値
	output.pos = pos;
	return output;
	 //output.svpos = mul(mat, pos);
	//output.normal = normal;
	//output.uv = uv;
}