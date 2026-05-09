.class public Lmoduledialog/bean/IconViewData;
.super Lmoduledialog/bean/ViewData;
.source "IconViewData.java"


# instance fields
.field private clickID:Ljava/lang/String;

.field private img_base64:Ljava/lang/String;

.field private img_base64_down:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lmoduledialog/bean/ViewData;-><init>()V

    return-void
.end method


# virtual methods
.method public getClickID()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lmoduledialog/bean/IconViewData;->clickID:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_base64()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lmoduledialog/bean/IconViewData;->img_base64:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_base64_down()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lmoduledialog/bean/IconViewData;->img_base64_down:Ljava/lang/String;

    return-object v0
.end method

.method public setClickID(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmoduledialog/bean/IconViewData;->clickID:Ljava/lang/String;

    return-void
.end method

.method public setImg_base64(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lmoduledialog/bean/IconViewData;->img_base64:Ljava/lang/String;

    return-void
.end method

.method public setImg_base64_down(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmoduledialog/bean/IconViewData;->img_base64_down:Ljava/lang/String;

    return-void
.end method
