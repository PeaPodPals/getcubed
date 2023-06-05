pub const IInstruction = packed struct {
    opcode: u6,
    li: u24,
    aa: bool,
    lk: bool,

    const Self = @This();

    pub fn getLi(self: Self) u24 {
        return self.li;
    }

    pub fn getAa(self: Self) bool {
        return self.aa;
    }

    pub fn getLk(self: Self) bool {
        return self.lk;
    }
};

pub const BInstruction = packed struct {
    opcode: u6,
    bo: u5,
    bi: u5,
    bd: u16,
    aa: bool,
    lk: bool,

    const Self = @This();

    pub fn getBo(self: Self) u5 {
        return self.bo;
    }

    pub fn getBi(self: Self) u5 {
        return self.bi;
    }

    pub fn getBd(self: Self) u16 {
        return self.bd;
    }

    pub fn getAa(self: Self) bool {
        return self.aa;
    }

    pub fn getLk(self: Self) bool {
        return self.lk;
    }
};

pub const ScInstruction = packed struct {
    opcode: u6,
    reserved_1: u14,
    lev: u7,
    reserved_2: u5,
};

pub const DInstruction = packed struct {
    opcode: u6,
    rt: u5,
    ra: u5,
    d: u16,

    const Self = @This();

    pub fn getRt(self: Self) u5 {
        return self.rt;
    }

    pub fn getRs(self: Self) u5 {
        return self.rt;
    }

    // TODO: BF/L

    pub fn getTo(self: Self) u5 {
        return self.rt;
    }

    pub fn getFrt(self: Self) u5 {
        return self.rt;
    }

    pub fn getFrs(self: Self) u5 {
        return self.rt;
    }

    pub fn getRa(self: Self) u5 {
        return self.ra;
    }

    pub fn getD(self: Self) u16 {
        return self.d;
    }

    pub fn getSi(self: Self) u16 {
        return self.d;
    }

    pub fn getUi(self: Self) u16 {
        return self.d;
    }
};

pub const DsInstruction = packed struct {
    opcode: u6,
    rt: u5,
    ra: u5,
    ds: u14,
    xo: u2,

    const Self = @This();

    pub fn getRt(self: Self) u5 {
        return self.rt;
    }

    pub fn getRs(self: Self) u5 {
        return self.rt;
    }

    pub fn getRa(self: Self) u5 {
        return self.ra;
    }

    pub fn getDs(self: Self) u14 {
        return self.ds;
    }

    pub fn getXo(self: Self) u2 {
        return self.xo;
    }
};

pub const XInstruction = packed struct {
    opcode: u6,
    rt: u5,
    ra: u5,
    rb: u5,
    xo: u10,
    rc: bool,

    const Self = @This();

    pub fn getRt(self: Self) u5 {
        return self.rt;
    }

    pub fn getRs(self: Self) u5 {
        return self.rt;
    }

    // TODO: BF/L/TH

    pub fn getTo(self: Self) u5 {
        return self.rt;
    }

    pub fn getFrt(self: Self) u5 {
        return self.rt;
    }

    pub fn getFrs(self: Self) u5 {
        return self.rt;
    }

    pub fn getBt(self: Self) u5 {
        return self.rt;
    }

    pub fn getRa(self: Self) u5 {
        return self.ra;
    }

    // TODO: SR/L/BFA

    pub fn getFra(self: Self) u5 {
        return self.ra;
    }

    pub fn getRb(self: Self) u5 {
        return self.rb;
    }

    pub fn getNb(self: Self) u5 {
        return self.rb;
    }

    pub fn getSh(self: Self) u5 {
        return self.rb;
    }

    pub fn getFrb(self: Self) u5 {
        return self.rb;
    }

    // TODO: U

    pub fn getXo(self: Self) u10 {
        return self.xo;
    }

    pub fn getRc(self: Self) bool {
        return self.rc;
    }
};

pub const XlInstruction = packed struct {
    opcode: u6,
    bt: u5,
    ba: u5,
    bb: u5,
    xo: u10,
    lk: bool,

    const Self = @This();

    pub fn getBt(self: Self) u5 {
        return self.bt;
    }

    pub fn getBo(self: Self) u5 {
        return self.bt;
    }

    // TODO: BF

    pub fn getBa(self: Self) u5 {
        return self.ba;
    }

    pub fn getBi(self: Self) u5 {
        return self.ba;
    }

    // TODO: BFA

    pub fn getBb(self: Self) u5 {
        return self.bb;
    }

    // TODO: BH

    pub fn getXo(self: Self) u10 {
        return self.xo;
    }

    pub fn getLk(self: Self) bool {
        return self.lk;
    }
};

pub const XfxInstruction = packed struct {
    opcode: u6,
    rt: u5,
    spr: u10,
    xo: u10,
    reserved: u1,

    const Self = @This();

    pub fn getRt(self: Self) u5 {
        return self.rt;
    }

    pub fn getRs(self: Self) u5 {
        return self.rt;
    }

    pub fn getSpr(self: Self) u10 {
        return self.spr;
    }

    pub fn getTbr(self: Self) u10 {
        return self.spr;
    }

    // TODO: FXM

    pub fn getXo(self: Self) u10 {
        return self.xo;
    }
};

pub const XflInstruction = packed struct {
    opcode: u6,
    reserved_1: u1,
    flm: u8,
    reserved_2: u1,
    frb: u5,
    xo: u10,
    rc: u1,

    const Self = @This();

    pub fn getFlm(self: Self) u8 {
        return self.flm;
    }

    pub fn getFrb(self: Self) u5 {
        return self.frb;
    }

    pub fn getXo(self: Self) u10 {
        return self.xo;
    }

    pub fn getRc(self: Self) u1 {
        return self.rc;
    }
};

pub const XsInstruction = packed struct {
    opcode: u6,
    rs: u5,
    ra: u5,
    sh1: u5,
    xo: u9,
    sh2: u1,
    rc: u1,

    const Self = @This();

    pub fn getRs(self: Self) u5 {
        return self.rs;
    }

    pub fn getRa(self: Self) u5 {
        return self.ra;
    }

    pub fn getSh1(self: Self) u5 {
        return self.sh1;
    }

    pub fn getXo(self: Self) u9 {
        return self.xo;
    }

    pub fn getSh2(self: Self) u1 {
        return self.sh2;
    }

    pub fn getRc(self: Self) u1 {
        return self.rc;
    }
};

pub const XoInstruction = packed struct {
    opcode: u6,
    rt: u5,
    ra: u5,
    rb: u5,
    oe: bool,
    xo: u9,
    rc: bool,

    const Self = @This();

    pub fn getRt(self: Self) u5 {
        return self.rt;
    }

    pub fn getRa(self: Self) u5 {
        return self.ra;
    }

    pub fn getRb(self: Self) u5 {
        return self.rb;
    }

    pub fn getOe(self: Self) bool {
        return self.oe;
    }

    pub fn getXo(self: Self) u9 {
        return self.xo;
    }

    pub fn getRc(self: Self) bool {
        return self.rc;
    }
};

pub const AInstruction = packed struct {
    opcode: u6,
    frt: u5,
    fra: u5,
    frb: u5,
    frc: u5,
    xo: u5,
    rc: bool,

    const Self = @This();

    pub fn getFrt(self: Self) u5 {
        return self.frt;
    }

    pub fn getFra(self: Self) u5 {
        return self.fra;
    }

    pub fn getFrb(self: Self) u5 {
        return self.frb;
    }

    pub fn getFrc(self: Self) u5 {
        return self.frc;
    }

    pub fn getXo(self: Self) u5 {
        return self.xo;
    }

    pub fn getRc(self: Self) bool {
        return self.rc;
    }
};

pub const MInstruction = packed struct {
    opcode: u6,
    rs: u5,
    ra: u5,
    rb: u5,
    mb: u5,
    me: u5,
    rc: bool,

    const Self = @This();

    pub fn getRs(self: Self) u5 {
        return self.rs;
    }

    pub fn getRa(self: Self) u5 {
        return self.ra;
    }

    pub fn getRb(self: Self) u5 {
        return self.rb;
    }

    pub fn getSh(self: Self) u5 {
        return self.rb;
    }

    pub fn getMb(self: Self) u5 {
        return self.mb;
    }

    pub fn getMe(self: Self) u5 {
        return self.me;
    }

    pub fn getRc(self: Self) bool {
        return self.rc;
    }
};

pub const MdInstruction = packed struct {
    opcode: u6,
    rs: u5,
    ra: u5,
    sh1: u5,
    mb: u6,
    xo: u3,
    sh2: bool,
    rc: bool,

    const Self = @This();

    pub fn getRs(self: Self) u5 {
        return self.rs;
    }

    pub fn getRa(self: Self) u5 {
        return self.ra;
    }

    pub fn getSh1(self: Self) u5 {
        return self.sh1;
    }

    pub fn getMb(self: Self) u6 {
        return self.mb;
    }

    pub fn getMe(self: Self) u6 {
        return self.mb;
    }

    pub fn getXo(self: Self) u3 {
        return self.xo;
    }

    pub fn getSh2(self: Self) bool {
        return self.sh2;
    }

    pub fn getRc(self: Self) bool {
        return self.rc;
    }
};

pub const MdsInstruction = packed struct {
    opcode: u6,
    rs: u5,
    ra: u5,
    rb: u5,
    mb: u6,
    xo: u4,
    rc: bool,

    const Self = @This();

    pub fn getRs(self: Self) u5 {
        return self.rs;
    }

    pub fn getRa(self: Self) u5 {
        return self.ra;
    }

    pub fn getRb(self: Self) u5 {
        return self.rb;
    }

    pub fn getMb(self: Self) u6 {
        return self.mb;
    }

    pub fn getMe(self: Self) u6 {
        return self.mb;
    }

    pub fn getXo(self: Self) u3 {
        return self.xo;
    }

    pub fn getRc(self: Self) bool {
        return self.rc;
    }
};

/// Representation of a PowerPC instruction.
pub const Instruction = packed union {
    raw: u32,

    i: IInstruction,
    b: BInstruction,
    sc: ScInstruction,
    d: DInstruction,
    ds: DsInstruction,
    x: XInstruction,
    xl: XlInstruction,
    xfx: XfxInstruction,
    xfl: XflInstruction,
    xs: XsInstruction,
    xo: XoInstruction,
    a: AInstruction,
    m: MInstruction,
    md: MdInstruction,
    mds: MdsInstruction,

    /// Initializes an instruction from its raw value.
    pub fn init(value: u32) Instruction {
        return .{ .raw = value };
    }
};
