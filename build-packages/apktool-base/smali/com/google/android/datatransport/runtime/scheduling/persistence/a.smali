.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget p0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroid/database/Cursor;

    .line 9
    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_0
    check-cast p1, Landroid/database/Cursor;

    .line 20
    .line 21
    sget-object p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->o:Lcom/google/android/datatransport/Encoding;

    .line 22
    .line 23
    new-instance p0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportContext;->a()Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->b(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    .line 43
    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-static {v3}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->b(I)Lcom/google/android/datatransport/Priority;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->d(Lcom/google/android/datatransport/Priority;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    .line 55
    .line 56
    .line 57
    const/4 v3, 0x3

    .line 58
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-nez v3, :cond_0

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :goto_1
    invoke-virtual {v2, v3}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->c([B)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->a()Lcom/google/android/datatransport/runtime/TransportContext;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    return-object p0

    .line 82
    :pswitch_1
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 83
    .line 84
    sget-object p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->o:Lcom/google/android/datatransport/Encoding;

    .line 85
    .line 86
    const-string p0, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    .line 87
    .line 88
    new-array v0, v0, [Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p1, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    new-instance p1, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;

    .line 95
    .line 96
    invoke-direct {p1, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-static {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->P(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    check-cast p0, Ljava/util/List;

    .line 104
    .line 105
    return-object p0

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
