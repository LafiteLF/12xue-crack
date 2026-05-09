.class public Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;
.super Ljava/lang/Object;
.source "DBWrap.java"


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private readonly:Z


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public endTransaction()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public inTransaction()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public readonly()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->readonly:Z

    return v0
.end method

.method public setReadonly(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->readonly:Z

    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method
