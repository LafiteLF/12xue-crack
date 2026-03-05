.class public Lcom/deepe/a/g/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/a/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Z

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/a/g/b$a;->c:Z

    const-string v0, "\u53d6\u6d88"

    iput-object v0, p0, Lcom/deepe/a/g/b$a;->d:Ljava/lang/String;

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/deepe/a/g/b$a;->e:I

    const-string v0, "\u786e\u5b9a"

    iput-object v0, p0, Lcom/deepe/a/g/b$a;->f:Ljava/lang/String;

    const v0, -0xa8946b

    iput v0, p0, Lcom/deepe/a/g/b$a;->g:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method
