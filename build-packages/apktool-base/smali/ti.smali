.class public final synthetic Lti;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:J

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/String;)V
    .locals 0

    .line 12
    iput p1, p0, Lti;->j:I

    iput-wide p2, p0, Lti;->k:J

    iput-object p4, p0, Lti;->l:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;J)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lti;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lti;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput-wide p2, p0, Lti;->k:J

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lti;->j:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget-wide v4, p0, Lti;->k:J

    .line 8
    .line 9
    iget-object p0, p0, Lti;->l:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 15
    .line 16
    check-cast p1, Landroidx/compose/animation/core/Animatable;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->f()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroidx/compose/ui/unit/IntOffset;

    .line 23
    .line 24
    iget-wide v0, p1, Landroidx/compose/ui/unit/IntOffset;->a:J

    .line 25
    .line 26
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/unit/IntOffset;->b(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->f(J)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->c:Lr1;

    .line 34
    .line 35
    invoke-virtual {p0}, Lr1;->a()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-object v3

    .line 39
    :pswitch_0
    check-cast p0, Ljava/lang/String;

    .line 40
    .line 41
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const-string v0, "UPDATE workspec SET last_enqueue_time=? WHERE id=?"

    .line 47
    .line 48
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :try_start_0
    invoke-interface {p1, v2, v4, v5}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v1, p0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->V0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 62
    .line 63
    .line 64
    return-object v3

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :pswitch_1
    check-cast p0, Ljava/lang/String;

    .line 71
    .line 72
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    const-string v0, "UPDATE workspec SET schedule_requested_at=? WHERE id=?"

    .line 78
    .line 79
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :try_start_1
    invoke-interface {v0, v2, v4, v5}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, v1, p0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->a(Landroidx/sqlite/SQLiteConnection;)I

    .line 93
    .line 94
    .line 95
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 97
    .line 98
    .line 99
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :catchall_1
    move-exception p0

    .line 105
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
