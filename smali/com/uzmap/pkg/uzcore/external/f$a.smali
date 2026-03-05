.class Lcom/uzmap/pkg/uzcore/external/f$a;
.super Landroid/app/DatePickerDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/external/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/external/f$a;->setCancelable(Z)V

    sget-object p1, Lcom/deepe/b;->ab:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/external/f$a;->setTitle(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/deepe/b;->f:Ljava/lang/String;

    new-instance p2, Lcom/uzmap/pkg/uzcore/external/f$a$1;

    invoke-direct {p2, p0}, Lcom/uzmap/pkg/uzcore/external/f$a$1;-><init>(Lcom/uzmap/pkg/uzcore/external/f$a;)V

    const/4 p3, -0x2

    invoke-virtual {p0, p3, p1, p2}, Lcom/uzmap/pkg/uzcore/external/f$a;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onStop()V
    .locals 0

    return-void
.end method
