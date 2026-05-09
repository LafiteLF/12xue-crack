.class public Lcom/uzmap/pkg/uzcore/external/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/external/f$a;,
        Lcom/uzmap/pkg/uzcore/external/f$b;,
        Lcom/uzmap/pkg/uzcore/external/f$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;ILjava/util/Calendar;Lcom/uzmap/pkg/uzcore/external/f$c;)Landroid/app/AlertDialog;
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, p1, :cond_1

    new-instance p1, Lcom/uzmap/pkg/uzcore/external/f$2;

    invoke-direct {p1, p3, p2}, Lcom/uzmap/pkg/uzcore/external/f$2;-><init>(Lcom/uzmap/pkg/uzcore/external/f$c;Ljava/util/Calendar;)V

    new-instance p3, Lcom/uzmap/pkg/uzcore/external/f$b;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-direct {p3, p0, p1, v0, p2}, Lcom/uzmap/pkg/uzcore/external/f$b;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;II)V

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v2, Lcom/uzmap/pkg/uzcore/external/f$1;

    invoke-direct {v2, p3, p2}, Lcom/uzmap/pkg/uzcore/external/f$1;-><init>(Lcom/uzmap/pkg/uzcore/external/f$c;Ljava/util/Calendar;)V

    new-instance p3, Lcom/uzmap/pkg/uzcore/external/f$a;

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 p1, 0x5

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v0, p3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/uzmap/pkg/uzcore/external/f$a;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    :goto_1
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-object p3
.end method
