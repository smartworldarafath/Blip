.class public final synthetic Lm6;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

.field public final synthetic l:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/BaseRoomConnectionManager$DriverWrapper;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lm6;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lm6;->k:Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    .line 4
    .line 5
    iput-object p2, p0, Lm6;->l:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lm6;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Lm6;->l:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lm6;->k:Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;->a(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    invoke-virtual {p0, v1}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;->a(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "PRAGMA query_only = 1"

    .line 20
    .line 21
    invoke-static {p0, v0}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
