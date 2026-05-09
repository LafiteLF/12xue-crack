.class Lcom/uzmap/pkg/uzcore/external/f$b;
.super Landroid/app/TimePickerDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/external/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;II)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/external/f$b;->setCancelable(Z)V

    sget-object p1, Lcom/deepe/b;->ac:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/external/f$b;->setTitle(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/deepe/b;->f:Ljava/lang/String;

    new-instance p2, Lcom/uzmap/pkg/uzcore/external/f$b$1;

    invoke-direct {p2, p0}, Lcom/uzmap/pkg/uzcore/external/f$b$1;-><init>(Lcom/uzmap/pkg/uzcore/external/f$b;)V

    const/4 p3, -0x2

    invoke-virtual {p0, p3, p1, p2}, Lcom/uzmap/pkg/uzcore/external/f$b;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onStop()V
    .locals 0

    return-void
.end method
