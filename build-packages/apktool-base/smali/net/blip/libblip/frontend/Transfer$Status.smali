.class public final enum Lnet/blip/libblip/frontend/Transfer$Status;
.super Ljava/lang/Enum;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/blip/libblip/frontend/Transfer$Status$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/blip/libblip/frontend/Transfer$Status;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field public static final k:Lnet/blip/libblip/frontend/Transfer$Status$Companion;

.field public static final l:Lnet/blip/libblip/frontend/Transfer$Status$Companion$ADAPTER$1;

.field public static final enum m:Lnet/blip/libblip/frontend/Transfer$Status;

.field public static final enum n:Lnet/blip/libblip/frontend/Transfer$Status;

.field public static final enum o:Lnet/blip/libblip/frontend/Transfer$Status;

.field public static final enum p:Lnet/blip/libblip/frontend/Transfer$Status;

.field public static final enum q:Lnet/blip/libblip/frontend/Transfer$Status;

.field public static final enum r:Lnet/blip/libblip/frontend/Transfer$Status;

.field public static final enum s:Lnet/blip/libblip/frontend/Transfer$Status;

.field public static final enum t:Lnet/blip/libblip/frontend/Transfer$Status;

.field public static final enum u:Lnet/blip/libblip/frontend/Transfer$Status;

.field public static final enum v:Lnet/blip/libblip/frontend/Transfer$Status;

.field public static final synthetic w:[Lnet/blip/libblip/frontend/Transfer$Status;


# instance fields
.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lnet/blip/libblip/frontend/Transfer$Status;

    .line 2
    .line 3
    const-string v1, "UnknownStatus"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lnet/blip/libblip/frontend/Transfer$Status;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnet/blip/libblip/frontend/Transfer$Status;->m:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 10
    .line 11
    new-instance v1, Lnet/blip/libblip/frontend/Transfer$Status;

    .line 12
    .line 13
    const-string v2, "Created"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lnet/blip/libblip/frontend/Transfer$Status;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lnet/blip/libblip/frontend/Transfer$Status;->n:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 20
    .line 21
    new-instance v2, Lnet/blip/libblip/frontend/Transfer$Status;

    .line 22
    .line 23
    const-string v3, "InviteRequested"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v4}, Lnet/blip/libblip/frontend/Transfer$Status;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lnet/blip/libblip/frontend/Transfer$Status;->o:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 30
    .line 31
    new-instance v3, Lnet/blip/libblip/frontend/Transfer$Status;

    .line 32
    .line 33
    const-string v4, "Invited"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5, v5}, Lnet/blip/libblip/frontend/Transfer$Status;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lnet/blip/libblip/frontend/Transfer$Status;->p:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 40
    .line 41
    new-instance v4, Lnet/blip/libblip/frontend/Transfer$Status;

    .line 42
    .line 43
    const-string v5, "Pending"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6, v6}, Lnet/blip/libblip/frontend/Transfer$Status;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lnet/blip/libblip/frontend/Transfer$Status;->q:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 50
    .line 51
    new-instance v5, Lnet/blip/libblip/frontend/Transfer$Status;

    .line 52
    .line 53
    const-string v6, "Active"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7, v7}, Lnet/blip/libblip/frontend/Transfer$Status;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Lnet/blip/libblip/frontend/Transfer$Status;->r:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 60
    .line 61
    new-instance v6, Lnet/blip/libblip/frontend/Transfer$Status;

    .line 62
    .line 63
    const-string v7, "Paused"

    .line 64
    .line 65
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8, v8}, Lnet/blip/libblip/frontend/Transfer$Status;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v6, Lnet/blip/libblip/frontend/Transfer$Status;->s:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 70
    .line 71
    new-instance v7, Lnet/blip/libblip/frontend/Transfer$Status;

    .line 72
    .line 73
    const-string v8, "ResumeRequested"

    .line 74
    .line 75
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v8, v9, v9}, Lnet/blip/libblip/frontend/Transfer$Status;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v7, Lnet/blip/libblip/frontend/Transfer$Status;->t:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 80
    .line 81
    new-instance v8, Lnet/blip/libblip/frontend/Transfer$Status;

    .line 82
    .line 83
    const-string v9, "Completed"

    .line 84
    .line 85
    const/16 v10, 0x8

    .line 86
    .line 87
    invoke-direct {v8, v9, v10, v10}, Lnet/blip/libblip/frontend/Transfer$Status;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v8, Lnet/blip/libblip/frontend/Transfer$Status;->u:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 91
    .line 92
    new-instance v9, Lnet/blip/libblip/frontend/Transfer$Status;

    .line 93
    .line 94
    const-string v10, "Cancelled"

    .line 95
    .line 96
    const/16 v11, 0x9

    .line 97
    .line 98
    invoke-direct {v9, v10, v11, v11}, Lnet/blip/libblip/frontend/Transfer$Status;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    sput-object v9, Lnet/blip/libblip/frontend/Transfer$Status;->v:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 102
    .line 103
    filled-new-array/range {v0 .. v9}, [Lnet/blip/libblip/frontend/Transfer$Status;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    sput-object v1, Lnet/blip/libblip/frontend/Transfer$Status;->w:[Lnet/blip/libblip/frontend/Transfer$Status;

    .line 108
    .line 109
    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 110
    .line 111
    .line 112
    new-instance v1, Lnet/blip/libblip/frontend/Transfer$Status$Companion;

    .line 113
    .line 114
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 115
    .line 116
    .line 117
    sput-object v1, Lnet/blip/libblip/frontend/Transfer$Status;->k:Lnet/blip/libblip/frontend/Transfer$Status$Companion;

    .line 118
    .line 119
    const-class v1, Lnet/blip/libblip/frontend/Transfer$Status;

    .line 120
    .line 121
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    sget-object v2, Lcom/squareup/wire/Syntax;->l:Lcom/squareup/wire/Syntax;

    .line 126
    .line 127
    new-instance v3, Lnet/blip/libblip/frontend/Transfer$Status$Companion$ADAPTER$1;

    .line 128
    .line 129
    invoke-direct {v3, v1, v2, v0}, Lcom/squareup/wire/EnumAdapter;-><init>(Lkotlin/jvm/internal/ClassReference;Lcom/squareup/wire/Syntax;Lcom/squareup/wire/WireEnum;)V

    .line 130
    .line 131
    .line 132
    sput-object v3, Lnet/blip/libblip/frontend/Transfer$Status;->l:Lnet/blip/libblip/frontend/Transfer$Status$Companion$ADAPTER$1;

    .line 133
    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lnet/blip/libblip/frontend/Transfer$Status;->j:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/blip/libblip/frontend/Transfer$Status;
    .locals 1

    .line 1
    const-class v0, Lnet/blip/libblip/frontend/Transfer$Status;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/blip/libblip/frontend/Transfer$Status;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/blip/libblip/frontend/Transfer$Status;
    .locals 1

    .line 1
    sget-object v0, Lnet/blip/libblip/frontend/Transfer$Status;->w:[Lnet/blip/libblip/frontend/Transfer$Status;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/blip/libblip/frontend/Transfer$Status;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lnet/blip/libblip/frontend/Transfer$Status;->j:I

    .line 2
    .line 3
    return p0
.end method
