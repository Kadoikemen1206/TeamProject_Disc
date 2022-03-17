//=============================================================================
//
// ビルボード処理 [billboard.h]
// Author : NARUMI KOUKI
//
//=============================================================================
#ifndef _BILLBOARD_H_
#define _BILLBOARD_H_

#include "main.h"

typedef enum
{
	NULLTEXTURE = 0,
	TEXTURE_Audience,
	TEXTURE_ElectricBulletin,
	BILLBOARDTEXTURE_MAX
}E_BILLBOARD;

typedef struct
{
	D3DXVECTOR3 pos;		//ビルボードの座標
	D3DXVECTOR3 size;		//ビルボードのサイズ
	D3DXMATRIX mtxWorld;	//マトリックスワールド
	E_BILLBOARD texture;	//使用するテクスチャ
	bool bUse;				//使用しているかどうか
	int IdxShadow;			//影の設置に使う変数
}Billboard;

//プロトタイプ宣言
void InitBillboard(void);
void UninitBillboard(void);
void UpdataBillboard(void);
void DrawBillboard(void);
void SetBillboard(D3DXVECTOR3 pos, D3DXVECTOR3 size, E_BILLBOARD texture);
void InputBillboard(void);

void SetBSet(int C);

#endif