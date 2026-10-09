.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/f;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/f;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/f;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/f;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/f;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Ljava/util/HashMap;

    .line 12
    .line 13
    check-cast p1, Landroid/database/Cursor;

    .line 14
    .line 15
    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->o:Lcom/google/android/datatransport/Encoding;

    .line 16
    .line 17
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/util/Set;

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashSet;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {p0, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_0
    new-instance v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;

    .line 52
    .line 53
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const/4 v6, 0x2

    .line 58
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-direct {v4, v5, v6}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    return-object v3

    .line 70
    :pswitch_0
    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    .line 71
    .line 72
    check-cast p1, Landroid/database/Cursor;

    .line 73
    .line 74
    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->o:Lcom/google/android/datatransport/Encoding;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    int-to-long v5, v0

    .line 94
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->o:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 95
    .line 96
    invoke-virtual {p0, v5, v6, v0, v4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->A(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    return-object v3

    .line 101
    :pswitch_1
    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    .line 102
    .line 103
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 104
    .line 105
    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->o:Lcom/google/android/datatransport/Encoding;

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    const-string v0, "DELETE FROM log_event_dropped"

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 117
    .line 118
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v1, "UPDATE global_log_event_state SET last_metrics_upload_ms="

    .line 122
    .line 123
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->k:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 127
    .line 128
    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/time/Clock;->a()J

    .line 129
    .line 130
    .line 131
    move-result-wide v1

    .line 132
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 144
    .line 145
    .line 146
    return-object v3

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
