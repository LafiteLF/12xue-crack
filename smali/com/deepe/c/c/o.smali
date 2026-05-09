.class abstract Lcom/deepe/c/c/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/c/o$a;
    }
.end annotation


# static fields
.field static final e:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0x8

    sput v0, Lcom/deepe/c/c/o;->e:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x200000

    iput v0, p0, Lcom/deepe/c/c/o;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/c/o;->c:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepe/c/c/o;->d:I

    return-void
.end method
