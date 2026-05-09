.class public Lcom/coolzhouy/lamedemo/mp3recorder/SimpleLame;
.super Ljava/lang/Object;
.source "SimpleLame.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native close()V
.end method

.method public static native encode([S[SI[B)I
.end method

.method public static native flush([B)I
.end method

.method public static init(IIII)V
    .locals 1

    const/4 v0, 0x7

    .line 44
    invoke-static {p0, p1, p2, p3, v0}, Lcom/coolzhouy/lamedemo/mp3recorder/SimpleLame;->init(IIIII)V

    return-void
.end method

.method public static native init(IIIII)V
.end method
