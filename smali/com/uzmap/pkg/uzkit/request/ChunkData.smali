.class public final Lcom/uzmap/pkg/uzkit/request/ChunkData;
.super Ljava/lang/Object;


# instance fields
.field public final data:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final retry:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/request/ChunkData;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/uzmap/pkg/uzkit/request/ChunkData;->data:Ljava/lang/String;

    iput-object p3, p0, Lcom/uzmap/pkg/uzkit/request/ChunkData;->id:Ljava/lang/String;

    iput p4, p0, Lcom/uzmap/pkg/uzkit/request/ChunkData;->retry:I

    return-void
.end method

.method static final obtain(Lcom/deepe/c/j/e/c;)Lcom/uzmap/pkg/uzkit/request/ChunkData;
    .locals 4

    new-instance v0, Lcom/uzmap/pkg/uzkit/request/ChunkData;

    iget-object v1, p0, Lcom/deepe/c/j/e/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/deepe/c/j/e/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/deepe/c/j/e/c;->c:Ljava/lang/String;

    iget p0, p0, Lcom/deepe/c/j/e/c;->d:I

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/uzmap/pkg/uzkit/request/ChunkData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
