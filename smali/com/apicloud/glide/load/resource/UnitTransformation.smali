.class public Lcom/apicloud/glide/load/resource/UnitTransformation;
.super Ljava/lang/Object;
.source "UnitTransformation.java"

# interfaces
.implements Lcom/apicloud/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apicloud/glide/load/Transformation<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TRANSFORMATION:Lcom/apicloud/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/Transformation<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/apicloud/glide/load/resource/UnitTransformation;

    invoke-direct {v0}, Lcom/apicloud/glide/load/resource/UnitTransformation;-><init>()V

    sput-object v0, Lcom/apicloud/glide/load/resource/UnitTransformation;->TRANSFORMATION:Lcom/apicloud/glide/load/Transformation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/apicloud/glide/load/resource/UnitTransformation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/apicloud/glide/load/resource/UnitTransformation<",
            "TT;>;"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/apicloud/glide/load/resource/UnitTransformation;->TRANSFORMATION:Lcom/apicloud/glide/load/Transformation;

    check-cast v0, Lcom/apicloud/glide/load/resource/UnitTransformation;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public transform(Lcom/apicloud/glide/load/engine/Resource;II)Lcom/apicloud/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/engine/Resource<",
            "TT;>;II)",
            "Lcom/apicloud/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation

    return-object p1
.end method
