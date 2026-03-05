.class Lcom/apicloud/a/i/a/y/a/g;
.super Ljava/lang/Object;


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field private a:Lcom/apicloud/a/i/a/y/a/c;

.field private b:Lcom/apicloud/a/i/a/y/a/m;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "img"

    const-string v1, "image"

    const-string v2, "input"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/y/a/g;->d:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/g;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/apicloud/a/i/a/y/a/a$b;Lcom/apicloud/a/i/a/y/a/a$c;Lcom/apicloud/a/i/a/y/a/a$a;)Landroid/text/Spanned;
    .locals 1

    invoke-static {}, Lcom/apicloud/a/i/a/y/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/apicloud/a/i/a/y/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x3f

    invoke-static {p0, v0, p1, p2, p3}, Lcom/apicloud/a/i/a/y/a/a;->a(Ljava/lang/String;ILcom/apicloud/a/i/a/y/a/a$b;Lcom/apicloud/a/i/a/y/a/a$c;Lcom/apicloud/a/i/a/y/a/a$a;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/apicloud/a/i/a/y/a/g;->d:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_1

    return-object p0

    :cond_1
    aget-object v5, v0, v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "([\\s\\S]*?).*?>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/apicloud/a/i/a/y/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/>"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    move-object v7, v1

    :cond_4
    invoke-virtual {p0, v6, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1
.end method

.method private a(Landroid/text/SpannableStringBuilder;)V
    .locals 8

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    if-eqz v0, :cond_1

    array-length v1, v0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    new-instance v7, Lcom/apicloud/a/i/a/y/a/a/f;

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/apicloud/a/i/a/y/a/a/f;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/apicloud/a/i/a/y/a/g;->b:Lcom/apicloud/a/i/a/y/a/m;

    invoke-virtual {v7, v3}, Lcom/apicloud/a/i/a/y/a/a/f;->a(Lcom/apicloud/a/i/a/y/a/m;)V

    invoke-virtual {p1, v7, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "/>"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final a(Lcom/apicloud/a/i/a/y/a/c;)Lcom/apicloud/a/i/a/y/a/g;
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/g;->a:Lcom/apicloud/a/i/a/y/a/c;

    return-object p0
.end method

.method final a(Lcom/apicloud/a/i/a/y/a/m;)Lcom/apicloud/a/i/a/y/a/g;
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/g;->b:Lcom/apicloud/a/i/a/y/a/m;

    return-object p0
.end method

.method public a(Landroid/widget/TextView;Lcom/apicloud/a/d;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/g;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v0, Lcom/apicloud/a/i/a/y/a/e;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/y/a/e;-><init>(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/y/a/g;->a:Lcom/apicloud/a/i/a/y/a/c;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/y/a/e;->a(Lcom/apicloud/a/i/a/y/a/c;)V

    new-instance v1, Lcom/apicloud/a/i/a/y/a/f;

    invoke-direct {v1, p2}, Lcom/apicloud/a/i/a/y/a/f;-><init>(Lcom/apicloud/a/d;)V

    new-instance p2, Lcom/apicloud/a/i/a/y/a/d;

    invoke-direct {p2, p1}, Lcom/apicloud/a/i/a/y/a/d;-><init>(Landroid/widget/TextView;)V

    iget-object v2, p0, Lcom/apicloud/a/i/a/y/a/g;->c:Ljava/lang/String;

    invoke-static {v2, v0, v1, p2}, Lcom/apicloud/a/i/a/y/a/g;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/y/a/a$b;Lcom/apicloud/a/i/a/y/a/a$c;Lcom/apicloud/a/i/a/y/a/a$a;)Landroid/text/Spanned;

    move-result-object p2

    instance-of v0, p2, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object p2, v0

    :goto_1
    invoke-direct {p0, p2}, Lcom/apicloud/a/i/a/y/a/g;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0
.end method
