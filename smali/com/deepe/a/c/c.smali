.class public abstract Lcom/deepe/a/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/a/c/f;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/deepe/a/c/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/deepe/a/c/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/a/c/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepe/a/c/c;->b:Lcom/deepe/a/c/d;

    return-void
.end method

.method private a(Landroid/location/Location;Lcom/deepe/a/c/f;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/c/c;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/deepe/a/c/b;->a(Landroid/content/Context;Landroid/location/Location;Lcom/deepe/a/c/f;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/c/c;->b:Lcom/deepe/a/c/d;

    iget-boolean v0, v0, Lcom/deepe/a/c/d;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p0}, Lcom/deepe/a/c/c;->a(Landroid/location/Location;Lcom/deepe/a/c/f;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "success"

    invoke-virtual {p0, v0, p1, v1}, Lcom/deepe/a/c/c;->a(ZLandroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/location/Location;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/deepe/a/c/b;->a(Landroid/location/Location;Ljava/lang/String;)V

    const/4 p2, 0x1

    const-string v0, "success"

    invoke-virtual {p0, p2, p1, v0}, Lcom/deepe/a/c/c;->a(ZLandroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/deepe/a/c/c;->a(ZLandroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method public abstract a(ZLandroid/location/Location;Ljava/lang/String;)V
.end method
