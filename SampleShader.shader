Shader "Custom/SampleShader"
{

    SubShader
    {
        Tags { "RenderType" = "Opaque" }
            

        pass {

                CGPROGRAM
                #pragma vertex vert  //initialising vertex shader vert
                #pragma fragment frag //initialising fragment shader frag
                #include "UnityCG.cginc"



        struct vertStruct
        {
            float4 vert : POSITION;
           
        };

        struct fragStruct
        {

            float4 vertex : POSITION;

        };


        fragStruct vert(vertStruct v)
        {
            fragStruct o;
            o.vertex = UnityObjectToClipPos(v.vert);
            return o;
        }

        float4 frag(fragStruct i) : SV_Target{
            return float4(1,0,0,1);
        }
        ENDCG
        }
    }
    FallBack "Diffuse"
}
