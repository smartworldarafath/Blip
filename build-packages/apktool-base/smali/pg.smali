.class public final synthetic Lpg;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lpg;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lpg;->l:I

    .line 8
    .line 9
    iput-object p2, p0, Lpg;->k:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 12
    iput p3, p0, Lpg;->j:I

    iput-object p1, p0, Lpg;->k:Ljava/lang/String;

    iput p2, p0, Lpg;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lpg;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Lpg;->k:Ljava/lang/String;

    .line 8
    .line 9
    iget p0, p0, Lpg;->l:I

    .line 10
    .line 11
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v0, "UPDATE workspec SET stop_reason=? WHERE id=?"

    .line 20
    .line 21
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    int-to-long v5, p0

    .line 26
    :try_start_0
    invoke-interface {p1, v3, v5, v6}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v2, v4}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->V0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const-string v0, "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)"

    .line 48
    .line 49
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :try_start_1
    invoke-interface {p1, v3, v4}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    int-to-long v3, p0

    .line 57
    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->V0()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    .line 62
    .line 63
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const-string v0, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    .line 76
    .line 77
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :try_start_2
    invoke-interface {p1, v3, v4}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    int-to-long v0, p0

    .line 85
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 86
    .line 87
    .line 88
    const-string p0, "work_spec_id"

    .line 89
    .line 90
    invoke-static {p1, p0}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    const-string v0, "generation"

    .line 95
    .line 96
    invoke-static {p1, v0}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    const-string v1, "system_id"

    .line 101
    .line 102
    invoke-static {p1, v1}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_0

    .line 111
    .line 112
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    long-to-int v0, v2

    .line 121
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 122
    .line 123
    .line 124
    move-result-wide v1

    .line 125
    long-to-int v1, v1

    .line 126
    new-instance v2, Landroidx/work/impl/model/SystemIdInfo;

    .line 127
    .line 128
    invoke-direct {v2, p0, v0, v1}, Landroidx/work/impl/model/SystemIdInfo;-><init>(Ljava/lang/String;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :catchall_2
    move-exception p0

    .line 133
    goto :goto_1

    .line 134
    :cond_0
    const/4 v2, 0x0

    .line 135
    :goto_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 136
    .line 137
    .line 138
    return-object v2

    .line 139
    :goto_1
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
