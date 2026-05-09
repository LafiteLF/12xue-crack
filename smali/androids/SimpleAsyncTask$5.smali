.class synthetic Landroids/SimpleAsyncTask$5;
.super Ljava/lang/Object;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroids/SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androids$SimpleAsyncTask$Policy:[I

.field static final synthetic $SwitchMap$androids$SimpleAsyncTask$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 305
    invoke-static {}, Landroids/SimpleAsyncTask$Status;->values()[Landroids/SimpleAsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroids/SimpleAsyncTask$5;->$SwitchMap$androids$SimpleAsyncTask$Status:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Landroids/SimpleAsyncTask$Status;->RUNNING:Landroids/SimpleAsyncTask$Status;

    invoke-virtual {v2}, Landroids/SimpleAsyncTask$Status;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Landroids/SimpleAsyncTask$5;->$SwitchMap$androids$SimpleAsyncTask$Status:[I

    sget-object v2, Landroids/SimpleAsyncTask$Status;->FINISHED:Landroids/SimpleAsyncTask$Status;

    invoke-virtual {v2}, Landroids/SimpleAsyncTask$Status;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    :catch_1
    invoke-static {}, Landroids/SimpleAsyncTask$Policy;->values()[Landroids/SimpleAsyncTask$Policy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroids/SimpleAsyncTask$5;->$SwitchMap$androids$SimpleAsyncTask$Policy:[I

    :try_start_2
    sget-object v2, Landroids/SimpleAsyncTask$Policy;->LIFO:Landroids/SimpleAsyncTask$Policy;

    invoke-virtual {v2}, Landroids/SimpleAsyncTask$Policy;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
