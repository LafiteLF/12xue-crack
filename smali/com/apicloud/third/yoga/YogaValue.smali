.class public Lcom/apicloud/third/yoga/YogaValue;
.super Ljava/lang/Object;


# static fields
.field private static synthetic $SWITCH_TABLE$com$apicloud$third$yoga$YogaUnit:[I

.field static final AUTO:Lcom/apicloud/third/yoga/YogaValue;

.field static final UNDEFINED:Lcom/apicloud/third/yoga/YogaValue;

.field static final ZERO:Lcom/apicloud/third/yoga/YogaValue;


# instance fields
.field public final unit:Lcom/apicloud/third/yoga/YogaUnit;

.field public final value:F


# direct methods
.method static synthetic $SWITCH_TABLE$com$apicloud$third$yoga$YogaUnit()[I
    .locals 3

    sget-object v0, Lcom/apicloud/third/yoga/YogaValue;->$SWITCH_TABLE$com$apicloud$third$yoga$YogaUnit:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/apicloud/third/yoga/YogaUnit;->values()[Lcom/apicloud/third/yoga/YogaUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->AUTO:Lcom/apicloud/third/yoga/YogaUnit;

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->POINT:Lcom/apicloud/third/yoga/YogaUnit;

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->UNDEFINED:Lcom/apicloud/third/yoga/YogaUnit;

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lcom/apicloud/third/yoga/YogaValue;->$SWITCH_TABLE$com$apicloud$third$yoga$YogaUnit:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/apicloud/third/yoga/YogaValue;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->UNDEFINED:Lcom/apicloud/third/yoga/YogaUnit;

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v2, v1}, Lcom/apicloud/third/yoga/YogaValue;-><init>(FLcom/apicloud/third/yoga/YogaUnit;)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaValue;->UNDEFINED:Lcom/apicloud/third/yoga/YogaValue;

    new-instance v0, Lcom/apicloud/third/yoga/YogaValue;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->POINT:Lcom/apicloud/third/yoga/YogaUnit;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1}, Lcom/apicloud/third/yoga/YogaValue;-><init>(FLcom/apicloud/third/yoga/YogaUnit;)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaValue;->ZERO:Lcom/apicloud/third/yoga/YogaValue;

    new-instance v0, Lcom/apicloud/third/yoga/YogaValue;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->AUTO:Lcom/apicloud/third/yoga/YogaUnit;

    invoke-direct {v0, v2, v1}, Lcom/apicloud/third/yoga/YogaValue;-><init>(FLcom/apicloud/third/yoga/YogaUnit;)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaValue;->AUTO:Lcom/apicloud/third/yoga/YogaValue;

    return-void
.end method

.method constructor <init>(FI)V
    .locals 0

    invoke-static {p2}, Lcom/apicloud/third/yoga/YogaUnit;->fromInt(I)Lcom/apicloud/third/yoga/YogaUnit;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/apicloud/third/yoga/YogaValue;-><init>(FLcom/apicloud/third/yoga/YogaUnit;)V

    return-void
.end method

.method public constructor <init>(FLcom/apicloud/third/yoga/YogaUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/apicloud/third/yoga/YogaValue;->value:F

    iput-object p2, p0, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "undefined"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/apicloud/third/yoga/YogaValue;->UNDEFINED:Lcom/apicloud/third/yoga/YogaValue;

    return-object p0

    :cond_1
    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/apicloud/third/yoga/YogaValue;->AUTO:Lcom/apicloud/third/yoga/YogaValue;

    return-object p0

    :cond_2
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/apicloud/third/yoga/YogaValue;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    invoke-direct {v0, p0, v1}, Lcom/apicloud/third/yoga/YogaValue;-><init>(FLcom/apicloud/third/yoga/YogaUnit;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/apicloud/third/yoga/YogaValue;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->POINT:Lcom/apicloud/third/yoga/YogaUnit;

    invoke-direct {v0, p0, v1}, Lcom/apicloud/third/yoga/YogaValue;-><init>(FLcom/apicloud/third/yoga/YogaUnit;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/apicloud/third/yoga/YogaValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/apicloud/third/yoga/YogaValue;

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    iget-object v2, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v2, :cond_1

    sget-object v2, Lcom/apicloud/third/yoga/YogaUnit;->UNDEFINED:Lcom/apicloud/third/yoga/YogaUnit;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v2, Lcom/apicloud/third/yoga/YogaUnit;->AUTO:Lcom/apicloud/third/yoga/YogaUnit;

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/apicloud/third/yoga/YogaValue;->value:F

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaUnit;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/apicloud/third/yoga/YogaValue;->$SWITCH_TABLE$com$apicloud$third$yoga$YogaUnit()[I

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "auto"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget v0, p0, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "undefined"

    return-object v0
.end method
