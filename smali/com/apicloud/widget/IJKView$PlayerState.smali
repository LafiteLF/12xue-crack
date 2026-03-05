.class public final enum Lcom/apicloud/widget/IJKView$PlayerState;
.super Ljava/lang/Enum;
.source "IJKView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/widget/IJKView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/widget/IJKView$PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apicloud/widget/IJKView$PlayerState;

.field public static final enum STATE_ERROR:Lcom/apicloud/widget/IJKView$PlayerState;

.field public static final enum STATE_IDLE:Lcom/apicloud/widget/IJKView$PlayerState;

.field public static final enum STATE_PAUSED:Lcom/apicloud/widget/IJKView$PlayerState;

.field public static final enum STATE_PLAYBACK_COMPLETED:Lcom/apicloud/widget/IJKView$PlayerState;

.field public static final enum STATE_PLAYING:Lcom/apicloud/widget/IJKView$PlayerState;

.field public static final enum STATE_PREPARED:Lcom/apicloud/widget/IJKView$PlayerState;

.field public static final enum STATE_PREPARING:Lcom/apicloud/widget/IJKView$PlayerState;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 92
    new-instance v0, Lcom/apicloud/widget/IJKView$PlayerState;

    const/4 v1, 0x0

    const-string v2, "STATE_ERROR"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/apicloud/widget/IJKView$PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_ERROR:Lcom/apicloud/widget/IJKView$PlayerState;

    .line 93
    new-instance v0, Lcom/apicloud/widget/IJKView$PlayerState;

    const/4 v2, 0x1

    const-string v3, "STATE_IDLE"

    invoke-direct {v0, v3, v2, v1}, Lcom/apicloud/widget/IJKView$PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_IDLE:Lcom/apicloud/widget/IJKView$PlayerState;

    .line 94
    new-instance v0, Lcom/apicloud/widget/IJKView$PlayerState;

    const/4 v3, 0x2

    const-string v4, "STATE_PREPARING"

    invoke-direct {v0, v4, v3, v2}, Lcom/apicloud/widget/IJKView$PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PREPARING:Lcom/apicloud/widget/IJKView$PlayerState;

    .line 95
    new-instance v0, Lcom/apicloud/widget/IJKView$PlayerState;

    const/4 v4, 0x3

    const-string v5, "STATE_PREPARED"

    invoke-direct {v0, v5, v4, v3}, Lcom/apicloud/widget/IJKView$PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PREPARED:Lcom/apicloud/widget/IJKView$PlayerState;

    .line 96
    new-instance v0, Lcom/apicloud/widget/IJKView$PlayerState;

    const/4 v5, 0x4

    const-string v6, "STATE_PLAYING"

    invoke-direct {v0, v6, v5, v4}, Lcom/apicloud/widget/IJKView$PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PLAYING:Lcom/apicloud/widget/IJKView$PlayerState;

    .line 97
    new-instance v0, Lcom/apicloud/widget/IJKView$PlayerState;

    const/4 v6, 0x5

    const-string v7, "STATE_PAUSED"

    invoke-direct {v0, v7, v6, v5}, Lcom/apicloud/widget/IJKView$PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PAUSED:Lcom/apicloud/widget/IJKView$PlayerState;

    .line 98
    new-instance v0, Lcom/apicloud/widget/IJKView$PlayerState;

    const/4 v7, 0x6

    const-string v8, "STATE_PLAYBACK_COMPLETED"

    invoke-direct {v0, v8, v7, v6}, Lcom/apicloud/widget/IJKView$PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PLAYBACK_COMPLETED:Lcom/apicloud/widget/IJKView$PlayerState;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/apicloud/widget/IJKView$PlayerState;

    .line 91
    sget-object v9, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_ERROR:Lcom/apicloud/widget/IJKView$PlayerState;

    aput-object v9, v8, v1

    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_IDLE:Lcom/apicloud/widget/IJKView$PlayerState;

    aput-object v1, v8, v2

    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PREPARING:Lcom/apicloud/widget/IJKView$PlayerState;

    aput-object v1, v8, v3

    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PREPARED:Lcom/apicloud/widget/IJKView$PlayerState;

    aput-object v1, v8, v4

    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PLAYING:Lcom/apicloud/widget/IJKView$PlayerState;

    aput-object v1, v8, v5

    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PAUSED:Lcom/apicloud/widget/IJKView$PlayerState;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/apicloud/widget/IJKView$PlayerState;->$VALUES:[Lcom/apicloud/widget/IJKView$PlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput p3, p0, Lcom/apicloud/widget/IJKView$PlayerState;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/widget/IJKView$PlayerState;
    .locals 1

    .line 91
    const-class v0, Lcom/apicloud/widget/IJKView$PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/widget/IJKView$PlayerState;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/widget/IJKView$PlayerState;
    .locals 1

    .line 91
    sget-object v0, Lcom/apicloud/widget/IJKView$PlayerState;->$VALUES:[Lcom/apicloud/widget/IJKView$PlayerState;

    invoke-virtual {v0}, [Lcom/apicloud/widget/IJKView$PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apicloud/widget/IJKView$PlayerState;

    return-object v0
.end method
