#include"BasicShaderHeader.hlsli"

[maxvertexcount(6)]
void main(
	triangle VSOutput input[3] : SV_POSITION,
	inout TriangleStream< GSOutput > output
)
{
	for (uint i = 0; i < 3; i++)
	{
		GSOutput elemdent;
		elemdent.svpos = input[i].svpos;
		elemdent.normal = input[i].normal;
		elemdent.uv = input[i].uv;
		output.Append(elemdent);
	}
	//現在のストリップを終了
	output.RestartStrip();

	for (uint i = 0; i < 3; i++)
	{
		GSOutput elemdent;
		elemdent.svpos = input[i].svpos+float4(20.0f,0.0f,0.0f,0.0f);
		elemdent.normal = input[i].normal;
		elemdent.uv = input[i].uv * 5.0f;
		output.Append(elemdent);
	}

}