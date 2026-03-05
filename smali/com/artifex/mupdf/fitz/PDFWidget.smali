.class public Lcom/artifex/mupdf/fitz/PDFWidget;
.super Lcom/artifex/mupdf/fitz/PDFAnnotation;
.source "PDFWidget.java"


# static fields
.field public static final PDF_BTN_FIELD_IS_NO_TOGGLE_TO_OFF:I = 0x4000

.field public static final PDF_BTN_FIELD_IS_PUSHBUTTON:I = 0x10000

.field public static final PDF_BTN_FIELD_IS_RADIO:I = 0x8000

.field public static final PDF_CH_FIELD_IS_COMBO:I = 0x20000

.field public static final PDF_CH_FIELD_IS_EDIT:I = 0x40000

.field public static final PDF_CH_FIELD_IS_MULTI_SELECT:I = 0x200000

.field public static final PDF_CH_FIELD_IS_SORT:I = 0x80000

.field public static final PDF_FIELD_IS_NO_EXPORT:I = 0x4

.field public static final PDF_FIELD_IS_READ_ONLY:I = 0x1

.field public static final PDF_FIELD_IS_REQUIRED:I = 0x2

.field public static final PDF_TX_FIELD_IS_COMB:I = 0x1000000

.field public static final PDF_TX_FIELD_IS_MULTILINE:I = 0x1000

.field public static final PDF_TX_FIELD_IS_PASSWORD:I = 0x2000

.field public static final TX_FORMAT_DATE:I = 0x3

.field public static final TX_FORMAT_NONE:I = 0x0

.field public static final TX_FORMAT_NUMBER:I = 0x1

.field public static final TX_FORMAT_SPECIAL:I = 0x2

.field public static final TX_FORMAT_TIME:I = 0x4

.field public static final TYPE_BUTTON:I = 0x1

.field public static final TYPE_CHECKBOX:I = 0x2

.field public static final TYPE_COMBOBOX:I = 0x3

.field public static final TYPE_LISTBOX:I = 0x4

.field public static final TYPE_RADIOBUTTON:I = 0x5

.field public static final TYPE_SIGNATURE:I = 0x6

.field public static final TYPE_TEXT:I = 0x7

.field public static final TYPE_UNKNOWN:I


# instance fields
.field private fieldFlags:I

.field private fieldType:I

.field private maxLen:I

.field private options:[Ljava/lang/String;

.field private originalValue:Ljava/lang/String;

.field private textFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/PDFAnnotation;-><init>(J)V

    return-void
.end method


# virtual methods
.method public cancelEditing()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/artifex/mupdf/fitz/PDFWidget;->originalValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/fitz/PDFWidget;->setValue(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/fitz/PDFWidget;->setEditing(Z)V

    return-void
.end method

.method public commitEditing(Ljava/lang/String;)Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/artifex/mupdf/fitz/PDFWidget;->originalValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/fitz/PDFWidget;->setValue(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/fitz/PDFWidget;->setEditing(Z)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/fitz/PDFWidget;->setTextValue(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    return v1

    .line 130
    :cond_0
    invoke-virtual {p0, v1}, Lcom/artifex/mupdf/fitz/PDFWidget;->setEditing(Z)V

    return v0
.end method

.method public getFieldFlags()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/artifex/mupdf/fitz/PDFWidget;->fieldFlags:I

    return v0
.end method

.method public getFieldType()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/artifex/mupdf/fitz/PDFWidget;->fieldType:I

    return v0
.end method

.method public getMaxLen()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/artifex/mupdf/fitz/PDFWidget;->maxLen:I

    return v0
.end method

.method public getOptions()[Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/artifex/mupdf/fitz/PDFWidget;->options:[Ljava/lang/String;

    return-object v0
.end method

.method public getTextFormat()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/artifex/mupdf/fitz/PDFWidget;->textFormat:I

    return v0
.end method

.method public native getValue()Ljava/lang/String;
.end method

.method public isButton()Z
    .locals 3

    .line 74
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFWidget;->getFieldType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isCheckbox()Z
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFWidget;->getFieldType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChoice()Z
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFWidget;->getFieldType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isComb()Z
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFWidget;->getFieldFlags()I

    move-result v0

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isComboBox()Z
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFWidget;->getFieldType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public native isEditing()Z
.end method

.method public isListBox()Z
    .locals 2

    .line 145
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFWidget;->getFieldType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMultiline()Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFWidget;->getFieldFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPassword()Z
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFWidget;->getFieldFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPushButton()Z
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFWidget;->getFieldType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRadioButton()Z
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFWidget;->getFieldType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadOnly()Z
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFWidget;->getFieldFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isText()Z
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFWidget;->getFieldType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public native setChoiceValue(Ljava/lang/String;)Z
.end method

.method public native setEditing(Z)V
.end method

.method public native setTextValue(Ljava/lang/String;)Z
.end method

.method public native setValue(Ljava/lang/String;)Z
.end method

.method public startEditing()V
    .locals 1

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/fitz/PDFWidget;->setEditing(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFWidget;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/artifex/mupdf/fitz/PDFWidget;->originalValue:Ljava/lang/String;

    return-void
.end method

.method public native textQuads()[Lcom/artifex/mupdf/fitz/Quad;
.end method

.method public native toggle()Z
.end method
