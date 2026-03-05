.class Lcom/apicloud/glide/ListPreloader$2;
.super Ljava/lang/Object;
.source "ListPreloader.java"

# interfaces
.implements Lcom/apicloud/glide/ListPreloader$PreloadSizeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/glide/ListPreloader;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apicloud/glide/ListPreloader$PreloadSizeProvider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/glide/ListPreloader;


# direct methods
.method constructor <init>(Lcom/apicloud/glide/ListPreloader;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/apicloud/glide/ListPreloader$2;->this$0:Lcom/apicloud/glide/ListPreloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreloadSize(Ljava/lang/Object;II)[I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)[I"
        }
    .end annotation

    .line 118
    iget-object p2, p0, Lcom/apicloud/glide/ListPreloader$2;->this$0:Lcom/apicloud/glide/ListPreloader;

    invoke-virtual {p2, p1}, Lcom/apicloud/glide/ListPreloader;->getDimensions(Ljava/lang/Object;)[I

    move-result-object p1

    return-object p1
.end method
