.class public Lcom/deepe/sdk/ModalHelper$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/sdk/ModalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cancelBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private cancelBtnText:Ljava/lang/String;

.field private cancelable:Z

.field private confirmBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private confirmBtnText:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field public editable:Z

.field private final mContext:Landroid/content/Context;

.field private neutralBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private neutralBtnText:Ljava/lang/String;

.field public placeholderText:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/sdk/ModalHelper$Builder;->cancelable:Z

    iput-object p1, p0, Lcom/deepe/sdk/ModalHelper$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$0(Lcom/deepe/sdk/ModalHelper$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/deepe/sdk/ModalHelper$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepe/sdk/ModalHelper$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$10(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepe/sdk/ModalHelper$Builder;->value:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2(Lcom/deepe/sdk/ModalHelper$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepe/sdk/ModalHelper$Builder;->cancelable:Z

    return p0
.end method

.method static synthetic access$3(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepe/sdk/ModalHelper$Builder;->content:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepe/sdk/ModalHelper$Builder;->confirmBtnText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5(Lcom/deepe/sdk/ModalHelper$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/deepe/sdk/ModalHelper$Builder;->confirmBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$6(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepe/sdk/ModalHelper$Builder;->cancelBtnText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$7(Lcom/deepe/sdk/ModalHelper$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/deepe/sdk/ModalHelper$Builder;->cancelBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$8(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepe/sdk/ModalHelper$Builder;->neutralBtnText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$9(Lcom/deepe/sdk/ModalHelper$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/deepe/sdk/ModalHelper$Builder;->neutralBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public setCancelable(Z)Lcom/deepe/sdk/ModalHelper$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/sdk/ModalHelper$Builder;->cancelable:Z

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/deepe/sdk/ModalHelper$Builder;
    .locals 0

    iput-object p1, p0, Lcom/deepe/sdk/ModalHelper$Builder;->content:Ljava/lang/String;

    return-object p0
.end method

.method public setEditable(ZLjava/lang/String;)Lcom/deepe/sdk/ModalHelper$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/sdk/ModalHelper$Builder;->editable:Z

    iput-object p2, p0, Lcom/deepe/sdk/ModalHelper$Builder;->placeholderText:Ljava/lang/String;

    return-object p0
.end method

.method public setInputValue(Ljava/lang/String;)Lcom/deepe/sdk/ModalHelper$Builder;
    .locals 0

    iput-object p1, p0, Lcom/deepe/sdk/ModalHelper$Builder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/sdk/ModalHelper$Builder;
    .locals 0

    iput-object p1, p0, Lcom/deepe/sdk/ModalHelper$Builder;->cancelBtnText:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepe/sdk/ModalHelper$Builder;->cancelBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/sdk/ModalHelper$Builder;
    .locals 0

    iput-object p1, p0, Lcom/deepe/sdk/ModalHelper$Builder;->neutralBtnText:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepe/sdk/ModalHelper$Builder;->neutralBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/sdk/ModalHelper$Builder;
    .locals 0

    iput-object p1, p0, Lcom/deepe/sdk/ModalHelper$Builder;->confirmBtnText:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepe/sdk/ModalHelper$Builder;->confirmBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/deepe/sdk/ModalHelper$Builder;
    .locals 0

    iput-object p1, p0, Lcom/deepe/sdk/ModalHelper$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
