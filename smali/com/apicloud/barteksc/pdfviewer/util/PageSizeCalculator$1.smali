.class synthetic Lcom/apicloud/barteksc/pdfviewer/util/PageSizeCalculator$1;
.super Ljava/lang/Object;
.source "PageSizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/barteksc/pdfviewer/util/PageSizeCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$apicloud$barteksc$pdfviewer$util$FitPolicy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    invoke-static {}, Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;->values()[Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/apicloud/barteksc/pdfviewer/util/PageSizeCalculator$1;->$SwitchMap$com$apicloud$barteksc$pdfviewer$util$FitPolicy:[I

    :try_start_0
    sget-object v1, Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;->HEIGHT:Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;

    invoke-virtual {v1}, Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/apicloud/barteksc/pdfviewer/util/PageSizeCalculator$1;->$SwitchMap$com$apicloud$barteksc$pdfviewer$util$FitPolicy:[I

    sget-object v1, Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;->BOTH:Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;

    invoke-virtual {v1}, Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
