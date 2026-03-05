.class Lcom/deepe/f/a/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/deepe/f/a/b;)J
    .locals 3

    invoke-static {p1}, Lcom/deepe/f/a/f;->a(Lcom/deepe/f/a/b;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/deepe/f/a/d;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p1, Lcom/deepe/f/a/b;->b:I

    invoke-static {p1}, Lcom/deepe/f/a/f;->b(Lcom/deepe/f/a/b;)J

    move-result-wide v0

    iget-boolean p1, p1, Lcom/deepe/f/a/b;->c:Z

    if-eqz p1, :cond_0

    invoke-static {p0, v0, v1}, Lcom/deepe/f/a/f;->a(Landroid/content/Context;J)V

    :cond_0
    invoke-static {p0}, Lcom/deepe/f/a/f;->b(Landroid/content/Context;)V

    return-wide v0
.end method

.method private static a(Lcom/deepe/f/a/b;)Landroid/content/ContentValues;
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    iget-object v1, p0, Lcom/deepe/f/a/b;->f:Lcom/deepe/f/a/b$a;

    invoke-virtual {v1}, Lcom/deepe/f/a/b$a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/deepe/f/a/f;->b(Lcom/deepe/f/a/b;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/deepe/f/a/b;->c:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "enabled"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v3, p0, Lcom/deepe/f/a/b;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "hour"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v3, p0, Lcom/deepe/f/a/b;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "minutes"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v3, p0, Lcom/deepe/f/a/b;->g:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "alarmtime"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/deepe/f/a/b;->f:Lcom/deepe/f/a/b$a;

    invoke-virtual {v3}, Lcom/deepe/f/a/b$a;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "daysofweek"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean v3, p0, Lcom/deepe/f/a/b;->h:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "vibrate"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v3, p0, Lcom/deepe/f/a/b;->i:Ljava/lang/String;

    const-string v4, "message"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/deepe/f/a/b;->j:Landroid/net/Uri;

    if-nez v3, :cond_1

    const-string p0, "silent"

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/deepe/f/a/b;->j:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string v3, "alert"

    invoke-virtual {v0, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "time: "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "alarm"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static a(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6

    sget-object v1, Lcom/deepe/f/a/d;->a:Landroid/net/Uri;

    sget-object v2, Lcom/deepe/f/a/c;->a:[Ljava/lang/String;

    const-string v3, "enabled=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/ContentResolver;I)Lcom/deepe/f/a/b;
    .locals 9

    sget-object v0, Lcom/deepe/f/a/d;->a:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/deepe/f/a/c;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/deepe/f/a/b;

    invoke-direct {p1, p0}, Lcom/deepe/f/a/b;-><init>(Landroid/database/Cursor;)V

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/deepe/f/a/b;
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/deepe/f/a/f;->a(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    const-wide v4, 0x7fffffffffffffffL

    :cond_0
    new-instance v6, Lcom/deepe/f/a/b;

    invoke-direct {v6, v2}, Lcom/deepe/f/a/b;-><init>(Landroid/database/Cursor;)V

    iget-wide v7, v6, Lcom/deepe/f/a/b;->g:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    invoke-static {v6}, Lcom/deepe/f/a/f;->b(Lcom/deepe/f/a/b;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/deepe/f/a/b;->g:J

    goto :goto_0

    :cond_1
    iget-wide v7, v6, Lcom/deepe/f/a/b;->g:J

    cmp-long v7, v7, v0

    if-gez v7, :cond_2

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/deepe/f/a/f;->a(Landroid/content/Context;Lcom/deepe/f/a/b;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-wide v7, v6, Lcom/deepe/f/a/b;->g:J

    cmp-long v7, v7, v4

    if-gez v7, :cond_3

    iget-wide v3, v6, Lcom/deepe/f/a/b;->g:J

    move-wide v4, v3

    move-object v3, v6

    :cond_3
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v3
.end method

.method private static a(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/f/a/f;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "E k:mm"

    goto :goto_0

    :cond_0
    const-string p0, "E h:mm aa"

    :goto_0
    if-nez p1, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method private static a(IILcom/deepe/f/a/b$a;)Ljava/util/Calendar;
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-lt p0, v2, :cond_0

    if-ne p0, v2, :cond_1

    if-gt p1, v4, :cond_1

    :cond_0
    const/4 v2, 0x6

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    :cond_1
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p2, v0}, Lcom/deepe/f/a/b$a;->a(Ljava/util/Calendar;)I

    move-result p0

    if-lez p0, :cond_2

    const/4 p1, 0x7

    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->add(II)V

    :cond_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/deepe/f/a/f;->b(Landroid/content/Context;I)V

    sget-object v1, Lcom/deepe/f/a/d;->a:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p0}, Lcom/deepe/f/a/f;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/deepe/f/a/f;->b(Landroid/content/Context;IZ)V

    invoke-static {p0}, Lcom/deepe/f/a/f;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/content/Context;J)V
    .locals 4

    const-string v0, "AppAlarmClock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "snooze_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-gez p1, :cond_0

    invoke-static {p0, v0}, Lcom/deepe/f/a/f;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 3

    const/4 v0, -0x1

    const-string v1, "snooze_id"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    invoke-static {p0}, Lcom/deepe/c/a/j;->c(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "snooze_time"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/deepe/f/a/b;J)V
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/deepe/f/a/b;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-static {p0}, Lcom/deepe/c/a/j;->f(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object p1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.appclock.notification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    const-string v3, "intent.extra.alarm_raw"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    const/high16 v0, 0x4000000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x8000000

    :goto_0
    invoke-static {p0, v1, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1

    invoke-virtual {p1, v1, p2, p3, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_2

    invoke-virtual {p1, v1, p2, p3, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1, p2, p3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {p0, p1}, Lcom/deepe/f/a/f;->a(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/deepe/f/a/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/deepe/f/a/b;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_2

    const-wide/16 v2, 0x0

    iget-object p0, p1, Lcom/deepe/f/a/b;->f:Lcom/deepe/f/a/b$a;

    invoke-virtual {p0}, Lcom/deepe/f/a/b$a;->b()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/deepe/f/a/f;->b(Lcom/deepe/f/a/b;)J

    move-result-wide v2

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p2, "alarmtime"

    invoke-virtual {v1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_2
    iget p2, p1, Lcom/deepe/f/a/b;->b:I

    invoke-static {p0, p2}, Lcom/deepe/f/a/f;->b(Landroid/content/Context;I)V

    :goto_0
    sget-object p0, Lcom/deepe/f/a/d;->a:Landroid/net/Uri;

    iget p1, p1, Lcom/deepe/f/a/b;->b:I

    int-to-long p1, p1

    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, v1, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "next_alarm_formatted"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/deepe/f/a/b;)J
    .locals 5

    invoke-static {p1}, Lcom/deepe/f/a/f;->a(Lcom/deepe/f/a/b;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/deepe/f/a/d;->a:Landroid/net/Uri;

    iget v3, p1, Lcom/deepe/f/a/b;->b:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p1}, Lcom/deepe/f/a/f;->b(Lcom/deepe/f/a/b;)J

    move-result-wide v0

    iget-boolean v2, p1, Lcom/deepe/f/a/b;->c:Z

    if-eqz v2, :cond_0

    iget p1, p1, Lcom/deepe/f/a/b;->b:I

    invoke-static {p0, p1}, Lcom/deepe/f/a/f;->b(Landroid/content/Context;I)V

    invoke-static {p0, v0, v1}, Lcom/deepe/f/a/f;->a(Landroid/content/Context;J)V

    :cond_0
    invoke-static {p0}, Lcom/deepe/f/a/f;->b(Landroid/content/Context;)V

    return-wide v0
.end method

.method private static b(Lcom/deepe/f/a/b;)J
    .locals 2

    iget v0, p0, Lcom/deepe/f/a/b;->d:I

    iget v1, p0, Lcom/deepe/f/a/b;->e:I

    iget-object p0, p0, Lcom/deepe/f/a/b;->f:Lcom/deepe/f/a/b$a;

    invoke-static {v0, v1, p0}, Lcom/deepe/f/a/f;->a(IILcom/deepe/f/a/b$a;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/deepe/f/a/f;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/deepe/f/a/f;->a(Landroid/content/Context;)Lcom/deepe/f/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/deepe/f/a/b;->g:J

    invoke-static {p0, v0, v1, v2}, Lcom/deepe/f/a/f;->a(Landroid/content/Context;Lcom/deepe/f/a/b;J)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/deepe/f/a/f;->c(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "AppAlarmClock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "snooze_id"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    if-ne v2, p1, :cond_1

    invoke-static {p0, v0}, Lcom/deepe/f/a/f;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;IZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/deepe/f/a/f;->a(Landroid/content/ContentResolver;I)Lcom/deepe/f/a/b;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/deepe/f/a/f;->a(Landroid/content/Context;Lcom/deepe/f/a/b;Z)V

    return-void
.end method

.method static c(Landroid/content/Context;)V
    .locals 5

    invoke-static {p0}, Lcom/deepe/c/a/j;->f(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.appclock.notification"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x17

    if-lt v2, v4, :cond_0

    const/high16 v2, 0x4000000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x8000000

    :goto_0
    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/deepe/f/a/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "AppAlarmClock"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "snooze_id"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    return v0

    :cond_0
    const-wide/16 v4, -0x1

    const-string v2, "snooze_time"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/deepe/f/a/f;->a(Landroid/content/ContentResolver;I)Lcom/deepe/f/a/b;

    move-result-object v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    iput-wide v1, v3, Lcom/deepe/f/a/b;->g:J

    invoke-static {p0, v3, v1, v2}, Lcom/deepe/f/a/f;->a(Landroid/content/Context;Lcom/deepe/f/a/b;J)V

    const/4 p0, 0x1

    return p0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
