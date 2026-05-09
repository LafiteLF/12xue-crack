.class public Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzkit/request/FineHttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorInfo"
.end annotation


# instance fields
.field public final des:Ljava/lang/String;

.field public final rawDes:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;->type:I

    iput-object p2, p0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;->des:Ljava/lang/String;

    iput-object p3, p0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;->rawDes:Ljava/lang/String;

    return-void
.end method
