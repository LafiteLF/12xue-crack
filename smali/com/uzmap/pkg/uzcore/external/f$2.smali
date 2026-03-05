.class Lcom/uzmap/pkg/uzcore/external/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


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

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/external/f$2;->a:Lcom/uzmap/pkg/uzcore/external/f$c;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/external/f$2;->b:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 6

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/external/f$2;->a:Lcom/uzmap/pkg/uzcore/external/f$c;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/external/f$2;->b:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/external/f$2;->b:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/external/f$2;->b:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v1, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/uzmap/pkg/uzcore/external/f$c;->a(IIIII)V

    :cond_0
    return-void
.end method
