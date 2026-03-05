.class public Ldoodle/DoodlePaintAttrs;
.super Ljava/lang/Object;
.source "DoodlePaintAttrs.java"


# instance fields
.field private mColor:Ldoodle/core/IDoodleColor;

.field private mPen:Ldoodle/core/IDoodlePen;

.field private mShape:Ldoodle/core/IDoodleShape;

.field private mSize:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Ldoodle/DoodlePaintAttrs;
    .locals 1

    .line 56
    new-instance v0, Ldoodle/DoodlePaintAttrs;

    invoke-direct {v0}, Ldoodle/DoodlePaintAttrs;-><init>()V

    return-object v0
.end method


# virtual methods
.method public color(Ldoodle/core/IDoodleColor;)Ldoodle/DoodlePaintAttrs;
    .locals 0

    .line 51
    iput-object p1, p0, Ldoodle/DoodlePaintAttrs;->mColor:Ldoodle/core/IDoodleColor;

    return-object p0
.end method

.method public color()Ldoodle/core/IDoodleColor;
    .locals 1

    .line 47
    iget-object v0, p0, Ldoodle/DoodlePaintAttrs;->mColor:Ldoodle/core/IDoodleColor;

    return-object v0
.end method

.method public pen(Ldoodle/core/IDoodlePen;)Ldoodle/DoodlePaintAttrs;
    .locals 0

    .line 24
    iput-object p1, p0, Ldoodle/DoodlePaintAttrs;->mPen:Ldoodle/core/IDoodlePen;

    return-object p0
.end method

.method public pen()Ldoodle/core/IDoodlePen;
    .locals 1

    .line 20
    iget-object v0, p0, Ldoodle/DoodlePaintAttrs;->mPen:Ldoodle/core/IDoodlePen;

    return-object v0
.end method

.method public shape(Ldoodle/core/IDoodleShape;)Ldoodle/DoodlePaintAttrs;
    .locals 0

    .line 33
    iput-object p1, p0, Ldoodle/DoodlePaintAttrs;->mShape:Ldoodle/core/IDoodleShape;

    return-object p0
.end method

.method public shape()Ldoodle/core/IDoodleShape;
    .locals 1

    .line 29
    iget-object v0, p0, Ldoodle/DoodlePaintAttrs;->mShape:Ldoodle/core/IDoodleShape;

    return-object v0
.end method

.method public size()F
    .locals 1

    .line 38
    iget v0, p0, Ldoodle/DoodlePaintAttrs;->mSize:F

    return v0
.end method

.method public size(F)Ldoodle/DoodlePaintAttrs;
    .locals 0

    .line 42
    iput p1, p0, Ldoodle/DoodlePaintAttrs;->mSize:F

    return-object p0
.end method
