.class public Lmoduledialog/bean/TextMsgViewData;
.super Lmoduledialog/bean/ViewData;
.source "TextMsgViewData.java"


# instance fields
.field private lineSpacting:F

.field private text:Ljava/lang/String;

.field private textSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lmoduledialog/bean/ViewData;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineSpacting()F
    .locals 1

    .line 9
    iget v0, p0, Lmoduledialog/bean/TextMsgViewData;->lineSpacting:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lmoduledialog/bean/TextMsgViewData;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .line 25
    iget v0, p0, Lmoduledialog/bean/TextMsgViewData;->textSize:I

    return v0
.end method

.method public setLineSpacting(F)V
    .locals 0

    .line 13
    iput p1, p0, Lmoduledialog/bean/TextMsgViewData;->lineSpacting:F

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lmoduledialog/bean/TextMsgViewData;->text:Ljava/lang/String;

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 29
    iput p1, p0, Lmoduledialog/bean/TextMsgViewData;->textSize:I

    return-void
.end method
