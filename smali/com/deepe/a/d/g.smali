.class public final Lcom/deepe/a/d/g;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/deepe/a/d/g;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/media/SoundPool;

.field private c:Landroid/media/AudioManager;

.field private final d:Landroid/util/SparseIntArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/deepe/a/d/g;->d:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/a/d/g;->a:Landroid/content/Context;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x5

    const/16 v0, 0x15

    if-ge p1, v0, :cond_0

    new-instance p1, Landroid/media/SoundPool;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Landroid/media/SoundPool;-><init>(III)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/media/SoundPool$Builder;

    invoke-direct {p1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {p1, p2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    new-instance p2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/deepe/a/d/g;->b:Landroid/media/SoundPool;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/deepe/a/d/g;
    .locals 2

    sget-object v0, Lcom/deepe/a/d/g;->e:Lcom/deepe/a/d/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/a/d/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/deepe/a/d/g;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    sput-object v0, Lcom/deepe/a/d/g;->e:Lcom/deepe/a/d/g;

    :cond_0
    sget-object p0, Lcom/deepe/a/d/g;->e:Lcom/deepe/a/d/g;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/deepe/a/d/g;->a(Landroid/content/Context;)Lcom/deepe/a/d/g;

    move-result-object p0

    invoke-direct {p0}, Lcom/deepe/a/d/g;->b()Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p0

    return p0
.end method

.method private b()Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/d/g;->c:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/a/d/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/c/a/j;->g(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/a/d/g;->c:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/deepe/a/d/g;->c:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/deepe/a/d/g;->b()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
