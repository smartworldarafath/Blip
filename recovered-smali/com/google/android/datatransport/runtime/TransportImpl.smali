.class final Lcom/google/android/datatransport/runtime/TransportImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/datatransport/Transport;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/Transport<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/datatransport/runtime/TransportContext;

.field public final b:Lcom/google/android/datatransport/Encoding;

.field public final c:Lf7;

.field public final d:Lcom/google/android/datatransport/runtime/TransportRuntime;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/Encoding;Lf7;Lcom/google/android/datatransport/runtime/TransportRuntime;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->a:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->b:Lcom/google/android/datatransport/Encoding;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->c:Lf7;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->d:Lcom/google/android/datatransport/runtime/TransportRuntime;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/datatransport/Event;)V
    .locals 9

    .line 1
    new-instance v0, Lf7;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lf7;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->a:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 14
    .line 15
    iput-object v2, v1, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->a:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 16
    .line 17
    iput-object p1, v1, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->c:Lcom/google/android/datatransport/Event;

    .line 18
    .line 19
    const-string p1, "FCM_CLIENT_EVENT_LOGGING"

    .line 20
    .line 21
    iput-object p1, v1, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->b:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->c:Lf7;

    .line 24
    .line 25
    iput-object p1, v1, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->d:Lf7;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->b:Lcom/google/android/datatransport/Encoding;

    .line 28
    .line 29
    iput-object p1, v1, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->e:Lcom/google/android/datatransport/Encoding;

    .line 30
    .line 31
    iget-object p1, v1, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->e:Lcom/google/android/datatransport/Encoding;

    .line 32
    .line 33
    const-string v2, ""

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    const-string p1, " encoding"

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget-object p1, v1, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->a:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 50
    .line 51
    iget-object v2, v1, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->b:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v3, v1, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->c:Lcom/google/android/datatransport/Event;

    .line 54
    .line 55
    iget-object v4, v1, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->d:Lf7;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->e:Lcom/google/android/datatransport/Encoding;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->d:Lcom/google/android/datatransport/runtime/TransportRuntime;

    .line 60
    .line 61
    iget-object v5, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->c:Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    sget-object v6, Lcom/google/android/datatransport/Priority;->j:Lcom/google/android/datatransport/Priority;

    .line 67
    .line 68
    invoke-virtual {p1, v6}, Lcom/google/android/datatransport/runtime/TransportContext;->f(Lcom/google/android/datatransport/Priority;)Lcom/google/android/datatransport/runtime/TransportContext;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {}, Lcom/google/android/datatransport/runtime/EventInternal;->a()Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    iget-object v7, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->a:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 77
    .line 78
    invoke-interface {v7}, Lcom/google/android/datatransport/runtime/time/Clock;->a()J

    .line 79
    .line 80
    .line 81
    move-result-wide v7

    .line 82
    check-cast v6, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;

    .line 83
    .line 84
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    iput-object v7, v6, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->d:Ljava/lang/Long;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->b:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 91
    .line 92
    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/time/Clock;->a()J

    .line 93
    .line 94
    .line 95
    move-result-wide v7

    .line 96
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    iput-object p0, v6, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->e:Ljava/lang/Long;

    .line 101
    .line 102
    invoke-virtual {v6, v2}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->g(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 103
    .line 104
    .line 105
    new-instance p0, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/google/android/datatransport/Event;->a()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    check-cast v2, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;

    .line 115
    .line 116
    sget-object v3, Lcom/google/firebase/messaging/ProtoEncoderDoNotUse;->a:Lcom/google/firebase/encoders/proto/ProtobufEncoder;

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 122
    .line 123
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 124
    .line 125
    .line 126
    :try_start_0
    invoke-virtual {v3, v2, v4}, Lcom/google/firebase/encoders/proto/ProtobufEncoder;->a(Ljava/lang/Object;Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    :catch_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-direct {p0, v1, v2}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    .line 134
    .line 135
    .line 136
    iput-object p0, v6, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->c:Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 137
    .line 138
    const/4 p0, 0x0

    .line 139
    iput-object p0, v6, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->b:Ljava/lang/Integer;

    .line 140
    .line 141
    invoke-virtual {v6}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->b()Lcom/google/android/datatransport/runtime/EventInternal;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    check-cast v5, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    .line 146
    .line 147
    iget-object v1, v5, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->b:Ljava/util/concurrent/Executor;

    .line 148
    .line 149
    new-instance v2, Ls3;

    .line 150
    .line 151
    invoke-direct {v2, v5, p1, v0, p0}, Ls3;-><init>(Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;Lcom/google/android/datatransport/runtime/TransportContext;Lf7;Lcom/google/android/datatransport/runtime/EventInternal;)V

    .line 152
    .line 153
    .line 154
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_1
    const-string p0, "Missing required properties:"

    .line 159
    .line 160
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method
