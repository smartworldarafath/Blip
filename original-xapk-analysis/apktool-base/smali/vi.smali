.class public final synthetic Lvi;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lvi;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lvi;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lvi;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lvi;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/content/res/AssetFileDescriptor;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p0, Landroidx/work/impl/WorkerWrapper;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpecDao;

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    .line 16
    .line 17
    check-cast v0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->a(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Landroidx/work/WorkInfo$State;->j:Landroidx/work/WorkInfo$State;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    sget-object v1, Landroidx/work/WorkInfo$State;->k:Landroidx/work/WorkInfo$State;

    .line 29
    .line 30
    invoke-virtual {v0, v1, p0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->f(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 34
    .line 35
    new-instance v2, Lq7;

    .line 36
    .line 37
    const/16 v4, 0x11

    .line 38
    .line 39
    invoke-direct {v2, p0, v4}, Lq7;-><init>(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    invoke-static {v1, v3, v4, v2}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/Number;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 50
    .line 51
    .line 52
    const/16 v1, -0x100

    .line 53
    .line 54
    invoke-virtual {v0, v1, p0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->g(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    move v3, v4

    .line 58
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :pswitch_1
    check-cast p0, Landroidx/work/impl/WorkerWrapper;

    .line 64
    .line 65
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    .line 66
    .line 67
    iget-object v1, v0, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 68
    .line 69
    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 70
    .line 71
    sget-object v3, Landroidx/work/WorkInfo$State;->j:Landroidx/work/WorkInfo$State;

    .line 72
    .line 73
    if-eq v1, v3, :cond_1

    .line 74
    .line 75
    sget-object p0, Landroidx/work/impl/WorkerWrapperKt;->a:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, " is not in ENQUEUED state. Nothing more to do"

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, p0, v1}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->b()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_2

    .line 109
    .line 110
    iget-object v1, v0, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 111
    .line 112
    if-ne v1, v3, :cond_3

    .line 113
    .line 114
    iget v1, v0, Landroidx/work/impl/model/WorkSpec;->k:I

    .line 115
    .line 116
    if-lez v1, :cond_3

    .line 117
    .line 118
    :cond_2
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->f:Landroidx/work/SystemClock;

    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    .line 125
    .line 126
    move-result-wide v3

    .line 127
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->a()J

    .line 128
    .line 129
    .line 130
    move-result-wide v0

    .line 131
    cmp-long p0, v3, v0

    .line 132
    .line 133
    if-gez p0, :cond_3

    .line 134
    .line 135
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    sget-object v0, Landroidx/work/impl/WorkerWrapperKt;->a:Ljava/lang/String;

    .line 140
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v3, "Delaying execution for "

    .line 144
    .line 145
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v2, " because it is being executed before schedule."

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {p0, v0, v1}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 167
    .line 168
    :goto_0
    return-object p0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
