.class Lcom/deepe/f/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "_id"

    const-string v1, "hour"

    const-string v2, "minutes"

    const-string v3, "daysofweek"

    const-string v4, "alarmtime"

    const-string v5, "enabled"

    const-string v6, "vibrate"

    const-string v7, "message"

    const-string v8, "alert"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deepe/f/a/c;->a:[Ljava/lang/String;

    return-void
.end method
