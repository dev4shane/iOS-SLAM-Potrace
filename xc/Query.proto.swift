/// Generated by the Protocol Buffers 3.5.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 4.0.0
/// Source file "query.proto"
/// Syntax "Proto2"

import Foundation
import ProtocolBuffers


public struct QueryRoot {
    public static let `default` = QueryRoot()
    public var extensionRegistry:ExtensionRegistry

    init() {
        extensionRegistry = ExtensionRegistry()
        registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
}

final public class Query : GeneratedMessage {
    public typealias BuilderType = Query.Builder

    public static func == (lhs: Query, rhs: Query) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasCleaningTime == rhs.hasCleaningTime) && (!lhs.hasCleaningTime || lhs.cleaningTime == rhs.cleaningTime)
        fieldCheck = fieldCheck && (lhs.hasRemainingCapacity == rhs.hasRemainingCapacity) && (!lhs.hasRemainingCapacity || lhs.remainingCapacity == rhs.remainingCapacity)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }

    public fileprivate(set) var cleaningTime:UInt32! = nil
    public fileprivate(set) var hasCleaningTime:Bool = false

    public fileprivate(set) var remainingCapacity:UInt32! = nil
    public fileprivate(set) var hasRemainingCapacity:Bool = false

    required public init() {
        super.init()
    }
    override public func isInitialized() throws {
        if !hasCleaningTime {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message \(Query.self): field \"cleaningTime\" mark required")
        }
        if !hasRemainingCapacity {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message \(Query.self): field \"remainingCapacity\" mark required")
        }
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
        if hasCleaningTime {
            try codedOutputStream.writeUInt32(fieldNumber: 1, value:cleaningTime)
        }
        if hasRemainingCapacity {
            try codedOutputStream.writeUInt32(fieldNumber: 2, value:remainingCapacity)
        }
        try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
        var serialize_size:Int32 = memoizedSerializedSize
        if serialize_size != -1 {
         return serialize_size
        }

        serialize_size = 0
        if hasCleaningTime {
            serialize_size += cleaningTime.computeUInt32Size(fieldNumber: 1)
        }
        if hasRemainingCapacity {
            serialize_size += remainingCapacity.computeUInt32Size(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> Query.Builder {
        return Query.classBuilder() as! Query.Builder
    }
    public func getBuilder() -> Query.Builder {
        return classBuilder() as! Query.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return Query.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return Query.Builder()
    }
    public func toBuilder() throws -> Query.Builder {
        return try Query.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:Query) throws -> Query.Builder {
        return try Query.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        try isInitialized()
        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasCleaningTime {
            jsonMap["cleaningTime"] = UInt(cleaningTime)
        }
        if hasRemainingCapacity {
            jsonMap["remainingCapacity"] = UInt(remainingCapacity)
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> Query {
        return try Query.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> Query {
        return try Query.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
        var output = ""
        if hasCleaningTime {
            output += "\(indent) cleaningTime: \(cleaningTime) \n"
        }
        if hasRemainingCapacity {
            output += "\(indent) remainingCapacity: \(remainingCapacity) \n"
        }
        output += unknownFields.getDescription(indent: indent)
        return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasCleaningTime {
                hashCode = (hashCode &* 31) &+ cleaningTime.hashValue
            }
            if hasRemainingCapacity {
                hashCode = (hashCode &* 31) &+ remainingCapacity.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Query"
    }
    override public func className() -> String {
        return "Query"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
        fileprivate var builderResult:Query = Query()
        public func getMessage() -> Query {
            return builderResult
        }

        required override public init () {
            super.init()
        }
        public var cleaningTime:UInt32 {
            get {
                return builderResult.cleaningTime
            }
            set (value) {
                builderResult.hasCleaningTime = true
                builderResult.cleaningTime = value
            }
        }
        public var hasCleaningTime:Bool {
            get {
                return builderResult.hasCleaningTime
            }
        }
        @discardableResult
        public func setCleaningTime(_ value:UInt32) -> Query.Builder {
            self.cleaningTime = value
            return self
        }
        @discardableResult
        public func clearCleaningTime() -> Query.Builder{
            builderResult.hasCleaningTime = false
            builderResult.cleaningTime = nil
            return self
        }
        public var remainingCapacity:UInt32 {
            get {
                return builderResult.remainingCapacity
            }
            set (value) {
                builderResult.hasRemainingCapacity = true
                builderResult.remainingCapacity = value
            }
        }
        public var hasRemainingCapacity:Bool {
            get {
                return builderResult.hasRemainingCapacity
            }
        }
        @discardableResult
        public func setRemainingCapacity(_ value:UInt32) -> Query.Builder {
            self.remainingCapacity = value
            return self
        }
        @discardableResult
        public func clearRemainingCapacity() -> Query.Builder{
            builderResult.hasRemainingCapacity = false
            builderResult.remainingCapacity = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> Query.Builder {
            builderResult = Query()
            return self
        }
        override public func clone() throws -> Query.Builder {
            return try Query.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> Query {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> Query {
            let returnMe:Query = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:Query) throws -> Query.Builder {
            if other == Query() {
                return self
            }
            if other.hasCleaningTime {
                cleaningTime = other.cleaningTime
            }
            if other.hasRemainingCapacity {
                remainingCapacity = other.remainingCapacity
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> Query.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Query.Builder {
            let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
            while (true) {
                let protobufTag = try codedInputStream.readTag()
                switch protobufTag {
                case 0: 
                    self.unknownFields = try unknownFieldsBuilder.build()
                    return self

                case 8:
                    cleaningTime = try codedInputStream.readUInt32()

                case 16:
                    remainingCapacity = try codedInputStream.readUInt32()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> Query.Builder {
            let resultDecodedBuilder = Query.Builder()
            if let jsonValueCleaningTime = jsonMap["cleaningTime"] as? UInt {
                resultDecodedBuilder.cleaningTime = UInt32(jsonValueCleaningTime)
            } else if let jsonValueCleaningTime = jsonMap["cleaningTime"] as? String {
                resultDecodedBuilder.cleaningTime = UInt32(jsonValueCleaningTime)!
            }
            if let jsonValueRemainingCapacity = jsonMap["remainingCapacity"] as? UInt {
                resultDecodedBuilder.remainingCapacity = UInt32(jsonValueRemainingCapacity)
            } else if let jsonValueRemainingCapacity = jsonMap["remainingCapacity"] as? String {
                resultDecodedBuilder.remainingCapacity = UInt32(jsonValueRemainingCapacity)!
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> Query.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try Query.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension Query: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<Query> {
        var mergedArray = Array<Query>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> Query? {
        return try Query.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> Query {
        return try Query.Builder().mergeFrom(data: data, extensionRegistry:QueryRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> Query {
        return try Query.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> Query {
        return try Query.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> Query {
        return try Query.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> Query {
        return try Query.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Query {
        return try Query.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "cleaningTime": return self.cleaningTime
        case "remainingCapacity": return self.remainingCapacity
        default: return nil
        }
    }
}
extension Query.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = Query
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "cleaningTime": return self.cleaningTime
            case "remainingCapacity": return self.remainingCapacity
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "cleaningTime":
                guard let newSubscriptValue = newSubscriptValue as? UInt32 else {
                    return
                }
                self.cleaningTime = newSubscriptValue
            case "remainingCapacity":
                guard let newSubscriptValue = newSubscriptValue as? UInt32 else {
                    return
                }
                self.remainingCapacity = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
