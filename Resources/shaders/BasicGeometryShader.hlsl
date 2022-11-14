#include"BasicShaderHeader.hlsli"

[maxvertexcount(3)]
void main(
	point VSOutput input[1] : SV_POSITION,
	inout TriangleStream< GSOutput > output
)
{
	GSOutput elemdent;
	//共通
	elemdent.normal = input[0].normal;
	elemdent.uv = input[0].uv;
	//1点目
	elemdent.svpos = input[0].svpos;
	output.Append(elemdent);
	//2点目
	elemdent.svpos = input[0].svpos+float4(10.0f,10.0f,0,0);
	output.Append(elemdent);
	//3点目
	elemdent.svpos = input[0].svpos + float4(10.0f, 0, 0, 0);
	output.Append(elemdent);
	//for (uint i = 0; i < 3; i++)
	//{
	//}
	//現在のストリップを終了
	//output.RestartStrip();

	/*for (uint i = 0; i < 3; i++)
	{
		GSOutput elemdent;
		elemdent.svpos = input[i].svpos+float4(20.0f,0.0f,0.0f,0.0f);
		elemdent.normal = input[i].normal;
		elemdent.uv = input[i].uv * 5.0f;
		output.Append(elemdent);
	}*/

}