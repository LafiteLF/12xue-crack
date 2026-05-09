.class public Lmoduledialog/bean/BtnViewData;
.super Lmoduledialog/bean/ViewData;
.source "BtnViewData.java"


# instance fields
.field private clickID:Ljava/lang/String;

.field private showText:Ljava/lang/String;

.field private textSize:I


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

    .line 17
    iget-object v0, p0, Lmoduledialog/bean/BtnViewData;->clickID:Ljava/lang/String;

    return-object v0
.end method

.method public getShowText()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lmoduledialog/bean/BtnViewData;->showText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .line 25
    iget v0, p0, Lmoduledialog/bean/BtnViewData;->textSize:I

    return v0
.end method

.method public setClickID(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lmoduledialog/bean/BtnViewData;->clickID:Ljava/lang/String;

    return-void
.end method

.method public setShowText(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lmoduledialog/bean/BtnViewData;->showText:Ljava/lang/String;

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 29
    iput p1, p0, Lmoduledialog/bean/BtnViewData;->textSize:I

    return-void
.end method
