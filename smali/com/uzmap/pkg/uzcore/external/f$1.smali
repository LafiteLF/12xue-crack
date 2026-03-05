.class Lcom/uzmap/pkg/uzcore/external/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/external/f;->a(Landroid/content/Context;ILjava/util/Calendar;Lcom/uzmap/pkg/uzcore/external/f$c;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/uzmap/pkg/uzcore/external/f$c;

.field private final synthetic b:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/external/f$c;Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/external/f$1;->a:Lcom/uzmap/pkg/uzcore/external/f$c;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/external/f$1;->b:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 6

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/external/f$1;->a:Lcom/uzmap/pkg/uzcore/external/f$c;

    if-eqz v0, :cond_0

    add-int/lit8 v2, p3, 0x1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/external/f$1;->b:Ljava/util/Calendar;

    const/16 p3, 0xb

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/external/f$1;->b:Ljava/util/Calendar;

    const/16 p3, 0xc

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move v1, p2

    move v3, p4

    invoke-interface/range {v0 .. v5}, Lcom/uzmap/pkg/uzcore/external/f$c;->a(IIIII)V

    :cond_0
    return-void
.end method
