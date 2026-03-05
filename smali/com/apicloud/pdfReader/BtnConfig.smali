.class public Lcom/apicloud/pdfReader/BtnConfig;
.super Ljava/lang/Object;
.source "BtnConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1c095bf60b4496b8L


# instance fields
.field public bgHighlight:Ljava/lang/String;

.field public bgHighlightBmp:Ljava/lang/String;

.field public bgNormal:Ljava/lang/String;

.field public bgNormalBmp:Ljava/lang/String;

.field public bottomProgress:Z

.field public corner:I

.field public h:I

.field public isNull:Z

.field public titleAlignment:Ljava/lang/String;

.field public titleColor:Ljava/lang/String;

.field public titleSize:I

.field public titleText:Ljava/lang/String;

.field public topBackButton:Z

.field public topListButton:Z

.field public topSearchButton:Z

.field public w:I


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 9

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 12
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v1

    iput v1, p0, Lcom/apicloud/pdfReader/BtnConfig;->w:I

    const/16 v1, 0x28

    .line 13
    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    iput v2, p0, Lcom/apicloud/pdfReader/BtnConfig;->h:I

    const-string v2, ""

    .line 14
    iput-object v2, p0, Lcom/apicloud/pdfReader/BtnConfig;->bgNormal:Ljava/lang/String;

    .line 15
    iput-object v2, p0, Lcom/apicloud/pdfReader/BtnConfig;->bgHighlight:Ljava/lang/String;

    .line 18
    iput-object v2, p0, Lcom/apicloud/pdfReader/BtnConfig;->titleText:Ljava/lang/String;

    const/16 v2, 0xd

    .line 19
    iput v2, p0, Lcom/apicloud/pdfReader/BtnConfig;->titleSize:I

    const-string v3, "#000"

    .line 20
    iput-object v3, p0, Lcom/apicloud/pdfReader/BtnConfig;->titleColor:Ljava/lang/String;

    const-string v4, "center"

    .line 21
    iput-object v4, p0, Lcom/apicloud/pdfReader/BtnConfig;->titleAlignment:Ljava/lang/String;

    const/4 v5, 0x1

    .line 23
    iput-boolean v5, p0, Lcom/apicloud/pdfReader/BtnConfig;->isNull:Z

    .line 25
    iput-boolean v5, p0, Lcom/apicloud/pdfReader/BtnConfig;->topBackButton:Z

    .line 26
    iput-boolean v5, p0, Lcom/apicloud/pdfReader/BtnConfig;->topListButton:Z

    .line 27
    iput-boolean v5, p0, Lcom/apicloud/pdfReader/BtnConfig;->topSearchButton:Z

    .line 28
    iput-boolean v5, p0, Lcom/apicloud/pdfReader/BtnConfig;->bottomProgress:Z

    const-string v6, "androidHidden"

    .line 32
    invoke-virtual {p1, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v7, "topBackButton"

    .line 34
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/apicloud/pdfReader/BtnConfig;->topBackButton:Z

    const-string v7, "topListButton"

    .line 35
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/apicloud/pdfReader/BtnConfig;->topListButton:Z

    const-string v7, "topSearchButton"

    .line 36
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/apicloud/pdfReader/BtnConfig;->topSearchButton:Z

    const-string v7, "bottomProgress"

    .line 37
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/apicloud/pdfReader/BtnConfig;->bottomProgress:Z

    :cond_0
    const-string v6, "backBtn"

    .line 40
    invoke-virtual {p1, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_1

    .line 42
    iput-boolean v5, p0, Lcom/apicloud/pdfReader/BtnConfig;->isNull:Z

    return-void

    :cond_1
    const/4 v5, 0x0

    .line 45
    iput-boolean v5, p0, Lcom/apicloud/pdfReader/BtnConfig;->isNull:Z

    const-string v5, "size"

    .line 46
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "w"

    .line 48
    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    iput v0, p0, Lcom/apicloud/pdfReader/BtnConfig;->w:I

    const-string v0, "h"

    .line 49
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    iput v0, p0, Lcom/apicloud/pdfReader/BtnConfig;->h:I

    :cond_2
    const-string v0, "bg"

    .line 51
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "normal"

    const-string v7, "rgba(0,0,0,0)"

    .line 53
    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/apicloud/pdfReader/BtnConfig;->bgNormal:Ljava/lang/String;

    const-string v8, "highlight"

    .line 54
    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/apicloud/pdfReader/BtnConfig;->bgHighlight:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/apicloud/pdfReader/BtnConfig;->bgNormalBmp:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/pdfReader/BtnConfig;->bgHighlightBmp:Ljava/lang/String;

    :cond_3
    const-string p1, "title"

    .line 60
    invoke-virtual {v6, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "text"

    .line 62
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/pdfReader/BtnConfig;->titleText:Ljava/lang/String;

    .line 63
    invoke-virtual {p1, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/apicloud/pdfReader/BtnConfig;->titleSize:I

    const-string v0, "color"

    .line 64
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/pdfReader/BtnConfig;->titleColor:Ljava/lang/String;

    const-string v0, "alignment"

    .line 65
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/pdfReader/BtnConfig;->titleAlignment:Ljava/lang/String;

    :cond_4
    const/4 p1, 0x5

    const-string v0, "corner"

    .line 67
    invoke-virtual {v6, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result p1

    iput p1, p0, Lcom/apicloud/pdfReader/BtnConfig;->corner:I

    return-void
.end method
