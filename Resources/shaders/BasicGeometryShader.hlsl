#include"BasicShaderHeader.hlsli"

[maxvertexcount(3)]
void main(
	point VSOutput input[1] : SV_POSITION,
	inout TriangleStream< GSOutput > output
)
{
	GSOutput elemdent;
	//����
	elemdent.normal = input[0].normal;
	elemdent.uv = input[0].uv;
	//1�_��
	elemdent.svpos = input[0].svpos;
	output.Append(elemdent);
	//2�_��
	elemdent.svpos = input[0].svpos+float4(10.0f,10.0f,0,0);
	output.Append(elemdent);
	//3�_��
	elemdent.svpos = input[0].svpos + float4(10.0f, 0, 0, 0);
	output.Append(elemdent);
	//for (uint i = 0; i < 3; i++)
	//{
	//}
	//���݂̃X�g���b�v���I��
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