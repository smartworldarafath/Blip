.class public abstract Landroidx/media3/exoplayer/audio/IamfUtil;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lcom/google/common/collect/ImmutableSet;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    const/16 v0, 0x18fc

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0xfc

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/16 v2, 0xc

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x4

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v7, 0x20

    .line 27
    .line 28
    if-ge v6, v7, :cond_0

    .line 29
    .line 30
    filled-new-array {v3, v1, v0, v5}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v4, v0}, Lcom/google/common/collect/ImmutableSet;->l(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_0
    const v6, 0x3000fc

    .line 41
    .line 42
    .line 43
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const v7, 0x140fc

    .line 48
    .line 49
    .line 50
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    const v8, 0xb40fc

    .line 55
    .line 56
    .line 57
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    const v8, 0x8b40fc

    .line 62
    .line 63
    .line 64
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    const v8, 0x20558fc

    .line 69
    .line 70
    .line 71
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    const v8, 0xc0b58fc

    .line 76
    .line 77
    .line 78
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    const v8, 0xb5bfc

    .line 83
    .line 84
    .line 85
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    const v8, 0x3fffffc

    .line 90
    .line 91
    .line 92
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v14

    .line 96
    const v8, 0xb58fc

    .line 97
    .line 98
    .line 99
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v15

    .line 103
    const v8, 0x3018fc

    .line 104
    .line 105
    .line 106
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v16

    .line 110
    const v8, 0x158fc

    .line 111
    .line 112
    .line 113
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v17

    .line 117
    const v8, 0x1403c

    .line 118
    .line 119
    .line 120
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v18

    .line 124
    const v8, 0xc3b58fc

    .line 125
    .line 126
    .line 127
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v19

    .line 131
    const v8, 0x3b5bfc

    .line 132
    .line 133
    .line 134
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v20

    .line 138
    filled-new-array/range {v9 .. v20}, [Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    sget v9, Lcom/google/common/collect/ImmutableSet;->l:I

    .line 143
    .line 144
    const/16 v9, 0x12

    .line 145
    .line 146
    new-array v10, v9, [Ljava/lang/Object;

    .line 147
    .line 148
    const/4 v11, 0x0

    .line 149
    aput-object v3, v10, v11

    .line 150
    .line 151
    const/4 v3, 0x1

    .line 152
    aput-object v1, v10, v3

    .line 153
    .line 154
    const/4 v1, 0x2

    .line 155
    aput-object v0, v10, v1

    .line 156
    .line 157
    const/4 v0, 0x3

    .line 158
    aput-object v5, v10, v0

    .line 159
    .line 160
    aput-object v6, v10, v4

    .line 161
    .line 162
    const/4 v0, 0x5

    .line 163
    aput-object v7, v10, v0

    .line 164
    .line 165
    const/4 v0, 0x6

    .line 166
    invoke-static {v8, v11, v10, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    .line 168
    .line 169
    invoke-static {v9, v10}, Lcom/google/common/collect/ImmutableSet;->l(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    :goto_0
    sput-object v0, Landroidx/media3/exoplayer/audio/IamfUtil;->a:Lcom/google/common/collect/ImmutableSet;

    .line 174
    .line 175
    return-void
.end method
