.class public final synthetic Lt9;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/utils/IdGenerator;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/IdGenerator;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt9;->a:Landroidx/work/impl/utils/IdGenerator;

    .line 5
    .line 6
    iput p2, p0, Lt9;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lt9;->a:Landroidx/work/impl/utils/IdGenerator;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/work/impl/utils/IdGenerator;->a:Landroidx/work/impl/WorkDatabase;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->r()Landroidx/work/impl/model/PreferenceDao;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroidx/work/impl/model/PreferenceDao_Impl;

    .line 10
    .line 11
    const-string v2, "next_job_scheduler_id"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroidx/work/impl/model/PreferenceDao_Impl;->a(Ljava/lang/String;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    long-to-int v1, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v3

    .line 27
    :goto_0
    const v4, 0x7fffffff

    .line 28
    .line 29
    .line 30
    if-ne v1, v4, :cond_1

    .line 31
    .line 32
    move v4, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    add-int/lit8 v4, v1, 0x1

    .line 35
    .line 36
    :goto_1
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->r()Landroidx/work/impl/model/PreferenceDao;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    new-instance v6, Landroidx/work/impl/model/Preference;

    .line 41
    .line 42
    int-to-long v7, v4

    .line 43
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-direct {v6, v2, v4}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 48
    .line 49
    .line 50
    check-cast v5, Landroidx/work/impl/model/PreferenceDao_Impl;

    .line 51
    .line 52
    iget-object v4, v5, Landroidx/work/impl/model/PreferenceDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 53
    .line 54
    new-instance v7, Lec;

    .line 55
    .line 56
    const/4 v8, 0x7

    .line 57
    invoke-direct {v7, v8, v5, v6}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    const/4 v5, 0x1

    .line 61
    invoke-static {v4, v3, v5, v7}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    if-ltz v1, :cond_2

    .line 65
    .line 66
    iget p0, p0, Lt9;->b:I

    .line 67
    .line 68
    if-gt v1, p0, :cond_2

    .line 69
    .line 70
    move v3, v1

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->r()Landroidx/work/impl/model/PreferenceDao;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    new-instance v0, Landroidx/work/impl/model/Preference;

    .line 77
    .line 78
    const-wide/16 v6, 0x1

    .line 79
    .line 80
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-direct {v0, v2, v1}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    .line 86
    .line 87
    check-cast p0, Landroidx/work/impl/model/PreferenceDao_Impl;

    .line 88
    .line 89
    iget-object v1, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 90
    .line 91
    new-instance v2, Lec;

    .line 92
    .line 93
    invoke-direct {v2, v8, p0, v0}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v3, v5, v2}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method
