.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;
.super Ljava/lang/Object;
.source "Helpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Lexer"
.end annotation


# static fields
.field public static final TOKEN_AND_OR:I = 0x3

.field public static final TOKEN_CLOSE_PAREN:I = 0x2

.field public static final TOKEN_COLUMN:I = 0x4

.field public static final TOKEN_COMPARE:I = 0x5

.field public static final TOKEN_END:I = 0x9

.field public static final TOKEN_IS:I = 0x7

.field public static final TOKEN_NULL:I = 0x8

.field public static final TOKEN_OPEN_PAREN:I = 0x1

.field public static final TOKEN_START:I = 0x0

.field public static final TOKEN_VALUE:I = 0x6


# instance fields
.field private final mAllowedColumns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChars:[C

.field private mCurrentToken:I

.field private mOffset:I

.field private final mSelection:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 826
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    .line 827
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mCurrentToken:I

    .line 831
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mSelection:Ljava/lang/String;

    .line 832
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mAllowedColumns:Ljava/util/Set;

    .line 833
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mChars:[C

    .line 834
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mSelection:Ljava/lang/String;

    array-length v1, p1

    invoke-virtual {p2, v0, v1, p1, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 835
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->advance()V

    return-void
.end method

.method private static final isIdentifierChar(C)Z
    .locals 1

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_3

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static final isIdentifierStart(C)Z
    .locals 1

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public advance()V
    .locals 9

    .line 843
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mChars:[C

    .line 846
    :goto_0
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-char v2, v0, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 847
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    goto :goto_0

    .line 851
    :cond_0
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    array-length v2, v0

    if-ne v1, v2, :cond_1

    const/16 v0, 0x9

    .line 852
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mCurrentToken:I

    return-void

    .line 857
    :cond_1
    aget-char v2, v0, v1

    const/16 v3, 0x28

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    add-int/2addr v1, v4

    .line 858
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    .line 859
    iput v4, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mCurrentToken:I

    return-void

    .line 864
    :cond_2
    aget-char v2, v0, v1

    const/16 v3, 0x29

    if-ne v2, v3, :cond_3

    add-int/2addr v1, v4

    .line 865
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    const/4 v0, 0x2

    .line 866
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mCurrentToken:I

    return-void

    .line 871
    :cond_3
    aget-char v2, v0, v1

    const/16 v3, 0x3f

    const/4 v5, 0x6

    if-ne v2, v3, :cond_4

    add-int/2addr v1, v4

    .line 872
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    .line 873
    iput v5, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mCurrentToken:I

    return-void

    .line 878
    :cond_4
    aget-char v2, v0, v1

    const/4 v3, 0x5

    const/16 v6, 0x3d

    if-ne v2, v6, :cond_6

    add-int/2addr v1, v4

    .line 879
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    .line 880
    iput v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mCurrentToken:I

    .line 881
    array-length v2, v0

    if-ge v1, v2, :cond_5

    aget-char v0, v0, v1

    if-ne v0, v6, :cond_5

    add-int/2addr v1, v4

    .line 882
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    :cond_5
    return-void

    .line 888
    :cond_6
    aget-char v2, v0, v1

    const/16 v7, 0x3e

    if-ne v2, v7, :cond_8

    add-int/2addr v1, v4

    .line 889
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    .line 890
    iput v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mCurrentToken:I

    .line 891
    array-length v2, v0

    if-ge v1, v2, :cond_7

    aget-char v0, v0, v1

    if-ne v0, v6, :cond_7

    add-int/2addr v1, v4

    .line 892
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    :cond_7
    return-void

    .line 898
    :cond_8
    aget-char v2, v0, v1

    const/16 v8, 0x3c

    if-ne v2, v8, :cond_b

    add-int/2addr v1, v4

    .line 899
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    .line 900
    iput v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mCurrentToken:I

    .line 901
    array-length v2, v0

    if-ge v1, v2, :cond_a

    aget-char v2, v0, v1

    if-eq v2, v6, :cond_9

    aget-char v0, v0, v1

    if-ne v0, v7, :cond_a

    .line 902
    :cond_9
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    :cond_a
    return-void

    .line 908
    :cond_b
    aget-char v2, v0, v1

    const/16 v7, 0x21

    if-ne v2, v7, :cond_d

    add-int/2addr v1, v4

    .line 909
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    .line 910
    iput v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mCurrentToken:I

    .line 911
    array-length v2, v0

    if-ge v1, v2, :cond_c

    aget-char v0, v0, v1

    if-ne v0, v6, :cond_c

    add-int/2addr v1, v4

    .line 912
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    return-void

    .line 915
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected character after !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :cond_d
    aget-char v1, v0, v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->isIdentifierStart(C)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 924
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    add-int/lit8 v2, v1, 0x1

    .line 925
    iput v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    .line 926
    :goto_1
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    array-length v3, v0

    if-ge v2, v3, :cond_e

    aget-char v2, v0, v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->isIdentifierChar(C)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 927
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    goto :goto_1

    .line 929
    :cond_e
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mSelection:Ljava/lang/String;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 930
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    sub-int/2addr v2, v1

    const/4 v1, 0x4

    if-gt v2, v1, :cond_12

    const-string v2, "IS"

    .line 931
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v0, 0x7

    .line 932
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mCurrentToken:I

    return-void

    :cond_f
    const-string v2, "OR"

    .line 935
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "AND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_2

    :cond_10
    const-string v2, "NULL"

    .line 939
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v0, 0x8

    .line 940
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mCurrentToken:I

    return-void

    :cond_11
    :goto_2
    const/4 v0, 0x3

    .line 936
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mCurrentToken:I

    return-void

    .line 944
    :cond_12
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mAllowedColumns:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 945
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mCurrentToken:I

    return-void

    .line 948
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unrecognized column or keyword"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :cond_14
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    aget-char v2, v0, v1

    const/16 v3, 0x27

    if-ne v2, v3, :cond_18

    add-int/2addr v1, v4

    .line 953
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    .line 954
    :goto_3
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    array-length v2, v0

    if-ge v1, v2, :cond_16

    .line 955
    aget-char v2, v0, v1

    if-ne v2, v3, :cond_15

    add-int/lit8 v2, v1, 0x1

    .line 956
    array-length v6, v0

    if-ge v2, v6, :cond_16

    add-int/lit8 v2, v1, 0x1

    aget-char v2, v0, v2

    if-ne v2, v3, :cond_16

    add-int/lit8 v1, v1, 0x1

    .line 957
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    .line 962
    :cond_15
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    goto :goto_3

    .line 964
    :cond_16
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    array-length v0, v0

    if-eq v1, v0, :cond_17

    add-int/2addr v1, v4

    .line 967
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    .line 968
    iput v5, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mCurrentToken:I

    return-void

    .line 965
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unterminated string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mOffset:I

    aget-char v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public currentToken()I
    .locals 1

    .line 839
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$Lexer;->mCurrentToken:I

    return v0
.end method
